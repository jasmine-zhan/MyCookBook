package com.example.cms.controller;

import com.example.cms.controller.exceptions.RecipeNotFoundException;
import com.example.cms.model.entity.Recipe;
import com.example.cms.model.repository.RecipeIngredientsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin
@RestController
@RequestMapping("/RecipeIngredients")

public class RecipeIngredientsController {

    @Autowired
    private final RecipeIngredientsRepository repository;

    public RecipeIngredientsController(RecipeIngredientsRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/findRecipeIngredients/{recipeId}")
    public List<String> findRecipeIngredients(@PathVariable("recipeId") Recipe recipeId){
        List<String> id = repository.findIngredientID(recipeId);
        if (!id.isEmpty()){
            return id;
        }
        else{
            throw new RecipeNotFoundException("Recipe not found: " + recipeId);
        }
    }

}
