package com.example.cms.controller;

import com.example.cms.controller.exceptions.InvalidPasswordException;
import com.example.cms.controller.exceptions.UserEmailExistsException;
import com.example.cms.controller.exceptions.UserNotFoundException;
import com.example.cms.model.entity.CookedRecipe;
import com.example.cms.model.entity.Recipe;
import com.example.cms.model.entity.User;
import com.example.cms.model.repository.RecipeRepository;
import com.example.cms.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.validation.BindValidationException;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
public class UserController {

    @Autowired
    private final UserRepository repository;

//    @Autowired
//    private UserRepository userRepository;

    @Autowired
    private RecipeRepository recipeRepository;

    public UserController(UserRepository repository) {
        this.repository = repository;
    }

    // Retrieve all users
    @GetMapping("/users")
    List<User> retrieveAllUsers() {
        return repository.findAll();
    }

    // Retrieve active users
    @GetMapping("/users/active")
    String retrieveActiveUser() {
        return repository.getActiveUser();
    }

    // Create a new user
    // add to create :check duplicate emails
    // add to login password

    public String newId() {
        int newIdNum = repository.generateNewUserNum();
        return String.format("U%03d", newIdNum);
    }

    @PostMapping("/users")
    User createUser(@RequestBody User newUser) {
        int exists = repository.checkEmail(newUser.getEmail());

        if (!((8 <= newUser.getPassword().length()) &(newUser.getPassword().length() <= 20))){
            throw new InvalidPasswordException();
        }
        if (exists != 0){
            throw new UserEmailExistsException(newUser.getEmail());
        }
        if (newUser.getId() == null || newUser.getId().isEmpty()) {
            String newId = newId(); // Call the method to generate a new ID
            newUser.setId(newId);
        }
        String active = repository.getActiveUser();
        if (active != null || !active.isEmpty()){
            logoutUser();
        }
        newUser.setLoggedIn(1);
        return repository.save(newUser);

    }

    // Retrieve a specific user by ID
    @GetMapping("/users/{id}")
    User retrieveUser(@PathVariable("id") String userId) {
        String email = repository.getEmailById(userId);
        return repository.findById(userId)
                .orElseThrow(() -> new UserNotFoundException(email));
    }

    // Update an existing user by ID
    @PutMapping("/users/{id}")
    User updateUser(@RequestBody User newUser, @PathVariable("id") String userId) {
        return repository.findById(userId)
                .map(user -> {
                    user.setFirstName(newUser.getFirstName());
                    user.setLastName(newUser.getLastName());
                    user.setEmail(newUser.getEmail());
                    return repository.save(user);
                })
                .orElseGet(() -> {
                    newUser.setId(userId);
                    return repository.save(newUser);
                });
    }


    @PutMapping("/users/login")
    public User loginUser(@RequestBody Map<String, String> credentials) {
        // ADD PASSWORD MATCH CHECKING
        // NEXT STEP

        String email = credentials.get("email");
        String inputPassword = credentials.get("password");

        String password = repository.getPassword(email);

        if (password == null) {
            throw new RuntimeException("Error: User not found");
            //return null;
        }

        if (inputPassword.isEmpty()){
            throw new RuntimeException("Error: Password cannot be empty");
        }
        if (!password.equals(inputPassword)){
            throw new RuntimeException("Error: Password does not match");
        }

        String active = repository.getActiveUser();
        if (active != null){
            logoutUser();
        }

        String userId= repository.getIdByEmail(email);

        return repository.findById(userId)
                .map(user -> {
                    user.setLoggedIn(1);
                    return repository.save(user);
                })
                .orElseThrow(() -> new UserNotFoundException(email));
    }

    @PutMapping("/users/logout")
    User logoutUser() {
        String active = repository.getActiveUser();
        String email = repository.getEmailById(active);
        return repository.findById(active)
                .map(user -> {
                    user.setLoggedIn(0);
                    return repository.save(user);
                }).orElseThrow(() -> new UserNotFoundException(email));
    }

    // Search for users by some search string (custom search method can be added)
    @GetMapping("/users/search/{searchstring}")
    List<User> searchUser(@PathVariable("searchstring") String searchString) {
        return repository.search(searchString);  // Adjust or remove this if you don't need search functionality
    }

    // Delete (Delete a user)
    @DeleteMapping("/users/delete/{userId}")
    public void deleteUser(@PathVariable String userId) {
        User user = repository.findById(userId).orElseThrow(() -> new RuntimeException("User not found"));
        // Remove the user from all recipes (many-to-many relationship)
//        for (Recipe recipe : user.getRecipesCookedByUser()) {
//            recipe.getUsersWhoCooked().remove(user);
//            recipeRepository.save(recipe);
//        }
        repository.deleteById(userId);
        repository.delete(user);
    }


}

