package com.example.cms.controller.exceptions;

public class IngredientNotFoundException extends RuntimeException {

    public IngredientNotFoundException(String ingredientId) {
        super("Could not find ingredient: " + ingredientId);
    }
}

