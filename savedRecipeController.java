package com.example.cms.controller;

import com.example.cms.controller.dto.savedRecipesDto;
import com.example.cms.controller.exceptions.RecipeNotFoundException;
import com.example.cms.model.entity.*;
import com.example.cms.model.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
@RequestMapping("/SavedRecipes")
public class savedRecipeController {

    @Autowired
    private final savedRecipesRepository repository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RecipeRepository recipeRepository;

    public savedRecipeController(savedRecipesRepository repository) {
        this.repository = repository;
    }


    @GetMapping("/getAllSaved") //get all owned for current active user
    public List<Map<String, Object>> retrieveAllSavedRecipes() {
        List<Object[]> results = repository.userSavedRecipes();

        return results.stream()
                .map(obj -> {
                    Map<String, Object> row = new HashMap<>();
                    row.put("recipeId", obj[0]);
                    row.put("userId", obj[1]);
                    row.put("recipeName", obj[2]);
                    row.put("steps", obj[3]);  // Name
                    row.put("cookTime", ((Number) obj[4]).intValue()); // Current Quantity
                    row.put("mealType", obj[5]);  // Food Group
                    row.put("cuisine", obj[6]); // Shelf Life
                    row.put("calories", ((Number) obj[7]).intValue());
                    row.put("servingSize", ((Number) obj[8]).intValue());
                    return row;
                })
                .collect(Collectors.toList());
    }


    @PostMapping("/addSaved")
    public SavedRecipes addSaved(@RequestBody savedRecipesDto request) {
        System.out.println("Received Request: " + request);  // ✅ Logs the incoming JSON
        // the request from appsmith is coming in correctly
        // sample request format
        // userId = "U001"

        // currentQuantity = {Double@10331}2.0

        // Check for missing fields
        if (request.getUser() == null || request.getRecipe() == null) {
            throw new RuntimeException("Missing required fields: " + request);
        }

        // Create entity and process as usual
        String userId = request.getUser(); // it says userRepository = null // not sure where is causing this problem
        String recipeName = request.getRecipe();


        User user = userRepository.findById(userId).orElseThrow(
                () -> new RuntimeException("User not found: " + userId)
        );

//
        String recipeId = recipeRepository.findRecipeId(recipeName);
        if (recipeId == null) {
            throw new RecipeNotFoundException(recipeName);
        }



        Recipe recipe = recipeRepository.findById(recipeId).orElseThrow(
                () -> new RuntimeException("Recipe not found: " + recipeName)
        );
        //
        System.out.println("User ID: " + user.getId());
        System.out.println("Recipe ID: " + recipe.getRecipeId());


        // initialize composite key
        savedRecipesKey OKey = new savedRecipesKey(user.getId(), recipe.getRecipeId());
        //
        SavedRecipes savedRecipe = new SavedRecipes();
        savedRecipe.setId(OKey);
        savedRecipe.setUser(user);
        savedRecipe.setRecipe(recipe);


        System.out.println("all set");

        return repository.save(savedRecipe);
    }


    @DeleteMapping("/removeSaved/{userId}/{recipeId}")
    void deleteSavedRecipe(@PathVariable String userId, @PathVariable String recipeId) {

        repository.deleteSavedRecipes(userId, recipeId);// Delete
        retrieveAllSavedRecipes();
    }



}
