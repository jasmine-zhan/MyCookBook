package com.example.cms.controller;

import com.example.cms.controller.dto.IngredientsDto;
import com.example.cms.controller.dto.OwnedIngredientsDto;
import com.example.cms.controller.exceptions.IngredientNotFoundException;
import com.example.cms.controller.exceptions.UserNotFoundException;
import com.example.cms.model.entity.*;
import com.example.cms.model.repository.IngredientRepository;
import com.example.cms.model.repository.OwnedIngredientsRepository;
import com.example.cms.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
@RequestMapping("/OwnedIngredients")
public class OwnedIngredientsController {

    @Autowired
    private final OwnedIngredientsRepository repository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private IngredientRepository ingredientRepository;

    public OwnedIngredientsController(OwnedIngredientsRepository repository) {
        this.repository = repository;
    }


    @GetMapping("/getAllOwned") //get all owned for current active user
    public List<Map<String, Object>> retrieveAllOwnedIngredients() {
        List<Object[]> results = repository.userIngredientsRaw();

        return results.stream()
                .map(obj -> {
                    Map<String, Object> row = new HashMap<>();
                    row.put("ingredient", obj[0]);
                    row.put("user", obj[5]);
                    row.put("ingredientName", obj[2]);  // Name
                    row.put("currentQuantity", ((Number) obj[4]).doubleValue()); // Current Quantity
                    row.put("foodGroup", obj[1]);  // Food Group
                    row.put("shelfLife", ((Number) obj[3]).intValue()); // Shelf Life
                    row.put("bestBefore", obj[6]);
                    return row;
                })
                .collect(Collectors.toList());
    }

    @PostMapping("/ingredientName")
    public OwnedIngredients createOwnedIngredient(@RequestBody OwnedIngredientsDto request) {
        System.out.println("Received Request: " + request);  // ✅ Logs the incoming JSON
        // the request from appsmith is coming in correctly
        // sample request format
        // userId = "U001"
        // ingredientName = "Salmon"
        // currentQuantity = {Double@10331}2.0

        // Check for missing fields
        if (request.getUser() == null || request.getIngredientName() == null || request.getCurrentQuantity() == null) {
            throw new RuntimeException("Missing required fields: " + request);
        }

        // Create entity and process as usual
        String userId = request.getUser(); // it says userRepository = null // not sure where is causing this problem
        String ingredientName = request.getIngredientName();
        Double currentQuantity = request.getCurrentQuantity();

        User user = userRepository.findById(userId).orElseThrow(
                () -> new RuntimeException("User not found: " + userId)
        );

//        String ingredientId = ingredientRepository.findIngredientID(ingredientName).orElseThrow(
//                () -> new IngredientNotFoundException(ingredientName)
//        );

        String ingredientId = ingredientRepository.findIngredientID(ingredientName);
        if (ingredientId == null) {
            throw new IngredientNotFoundException(ingredientName);
        }

        // test print
        System.out.println("ingredientId ID searched by IngName: " + ingredientId);

        Ingredient ingredient = ingredientRepository.findById(ingredientId).orElseThrow(
                () -> new RuntimeException("Ingredient not found: " + ingredientName)
        );
        //
        System.out.println("User ID: " + user.getId());
        System.out.println("Ingredient ID: " + ingredient.getIngredientId());
        System.out.println("currentQuantity: "  + currentQuantity);

        // initialize composite key
        OwnedIngredientsKey OKey = new OwnedIngredientsKey(user.getId(), ingredient.getIngredientId());
        //
        OwnedIngredients ownedIngredient = new OwnedIngredients();
        ownedIngredient.setId(OKey);
        ownedIngredient.setUser(user);
        ownedIngredient.setIngredient(ingredient);
        ownedIngredient.setCurrentQuantity(currentQuantity);
        LocalDate expiry = LocalDate.now().plusDays(ingredient.getShelfLife());
        ownedIngredient.setExpiry(expiry);

        System.out.println("all set");

        return repository.save(ownedIngredient);
    }

    // Updating quantity of ingredient
    @PutMapping("/{quantity}")
    public OwnedIngredients updateQuantity(@RequestBody OwnedIngredientsDto request, @PathVariable double quantity) {

        // Check for missing fields
        if (request.getUser() == null || request.getIngredientName() == null || request.getCurrentQuantity() == null) {
            throw new RuntimeException("Missing required fields: " + request);
        }

        String ingredientId = ingredientRepository.findIngredientID(request.getIngredientName());
        String email = userRepository.getEmailById(request.getUser());
        return repository.findById(new OwnedIngredientsKey(request.getUser(), ingredientId))
                .map(ownedIngredient -> {
                    ownedIngredient.setId(new OwnedIngredientsKey(request.getUser(), ingredientId));
                    ownedIngredient.setUser(userRepository.findById(request.getUser()
                    ).orElseThrow(
                            () -> new UserNotFoundException(email)
                    ));
                    ownedIngredient.setIngredient(ingredientRepository.findById(ingredientId)
                            .orElseThrow(
                                    () -> new IngredientNotFoundException(ingredientId)
                            ));
                    ownedIngredient.setCurrentQuantity(quantity);
                    return repository.save(ownedIngredient);
                })
                .orElseGet(() -> {
                    OwnedIngredients oi = new OwnedIngredients();
                    oi.setId(new
                            OwnedIngredientsKey(request.getUser(), ingredientId));
                    User user =
                            userRepository.findById(request.getUser()).orElseThrow(
                                    () -> new
                                            UserNotFoundException(email)
                            );
                    Ingredient ingredient =
                            ingredientRepository.findById(ingredientId).orElseThrow(
                                    () -> new
                                            IngredientNotFoundException(ingredientId)
                            );

                    oi.setUser(user);
                    oi.setIngredient(ingredient);
                    oi.setCurrentQuantity(quantity);
                    oi.setExpiry(LocalDate.now().plusDays(ingredient.getShelfLife()));
                    return repository.save(oi);
                });
    }


    @DeleteMapping("/delete/{userId}/{ingredientId}")
    void deleteOwnedIngredient(@PathVariable String userId, @PathVariable String ingredientId) {
        // Create a composite key using userId and ingredientId
        //OwnedIngredients key = new OwnedIngredientsKey(userId, ingredientId);
        repository.deleteOwnedIngredient(userId, ingredientId);// Delete the owned ingredient by composite key
        retrieveAllOwnedIngredients();
    }

    @GetMapping("/expiryIngredients")
    public List<String> getExpiredIngredients() {
        LocalDate currentDate = LocalDate.now();
        List<String> expiring = repository.getExpiredIngredients(currentDate.toString());
        // no ingredients expiring run error to appear as failure in appsmith
        if (expiring.isEmpty()){
            throw new RuntimeException();
        }
        // else return list of expiring ingredient names
        return expiring;
    }


}
