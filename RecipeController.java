package com.example.cms.controller;

import com.example.cms.controller.exceptions.IngredientNotFoundException;
import com.example.cms.controller.exceptions.RecipeNotFoundException;
import com.example.cms.model.entity.CookedRecipe;
import com.example.cms.model.entity.Recipe;
import com.example.cms.model.entity.User;
import com.example.cms.model.repository.RecipeRepository;
import com.example.cms.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/recipes")  // Base path for all methods in this controller
public class RecipeController {

    @Autowired
    private final RecipeRepository repository;

//    @Autowired
//    private UserRepository userRepository;

    public RecipeController(RecipeRepository repository) {
        this.repository = repository;
    }

    // Create a new recipe
    @PostMapping
    public Recipe createRecipe(@RequestBody Recipe newRecipe) {
        return repository.save(newRecipe);
    }

    // Retrieve all recipes
    @GetMapping
    public List<Recipe> retrieveAllRecipes() {
        return repository.findAll();
    }

    @GetMapping("/findRecipeByName/{recipeName}")
    public String findByName(@PathVariable ("recipeName") String recipeName){
        String id = repository.findRecipeByName(recipeName);
        if (!id.isEmpty()){
            return id;
        }
        else{
            throw new IngredientNotFoundException(recipeName);
        }
    }

    // Retrieve threshold meeting recipes
    @GetMapping("/filter/{threshold}")
    public List<Object[]> retrieveThresholdRecipes(@PathVariable("threshold") int threshold) {
        return repository.findThresholdRecipes(threshold);
    }

    // Retrieve a specific recipe by ID
    @GetMapping("/{id}")
    public Recipe retrieveRecipe(@PathVariable("id") String recipeId) {
        return repository.findById(recipeId)
                .orElseThrow(() -> new RecipeNotFoundException(recipeId));
    }

    // Update an existing recipe by ID
    @PutMapping("/{id}")
    public Recipe updateRecipe(@RequestBody Recipe newRecipe, @PathVariable("id") String recipeId) {
        return repository.findById(recipeId)
                .map(recipe -> {
                    recipe.setRecipeName(newRecipe.getRecipeName());
                    recipe.setSteps(newRecipe.getSteps());
                    return repository.save(recipe);
                })
                .orElseGet(() -> {
                    newRecipe.setRecipeId(recipeId);
                    return repository.save(newRecipe);
                });
    }

    // Delete a recipe by ID
    @DeleteMapping("/{id}")
    public void deleteRecipe(@PathVariable("id") String recipeId) {
        repository.deleteById(recipeId);
    }

    // CRUD FUNCTIONS BETWEEN RECIPE AND USER


//    // Get all users who cooked a specific recipe
//    @GetMapping("/{recipeId}/users")
//    public Set<CookedRecipe> getUsersWhoCookedRecipe(@PathVariable String recipeId) {
//        Recipe recipe = repository.findById(recipeId).orElseThrow(() -> new RuntimeException("Recipe not found"));
//        return recipe.getUsersWhoCooked();
//    }
//
//    // Delete a recipe (and remove it from users' cooked recipes)
//    @DeleteMapping("/{recipeId}")
//    public void deleteRecipe(@PathVariable String recipeId) {
//        Recipe recipe = repository.findById(recipeId).orElseThrow(() -> new RuntimeException("Recipe not found"));
//
//        // Remove the recipe from all users who have cooked it
//        for (CookedRecipe cookedRecipe : recipe.getUsersWhoCooked()) {
//            User user = userRepository.findById(cookedRecipe.getUserId()).orElseThrow(() -> new RuntimeException("User not found"));
//            user.getCookedRecipes().remove(cookedRecipe);
//            userRepository.save(user);
//        }
//
//        // Delete the recipe
//        repository.delete(recipe);
//    }
}

