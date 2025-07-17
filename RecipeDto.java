package com.example.cms.controller.dto;

public class RecipeDto {
    private String recipeId;
    private String recipeName;
    private String steps;
    private int cookTime;
    private String mealType;
    private String cuisine;
    private int calories;
    private int servingSize;

    public RecipeDto(String recipeId, String recipeName, String steps, int cookTime,
                     String mealType, String cuisine, int calories, int servingSize) {
        this.recipeId = recipeId;
        this.recipeName = recipeName;
        this.steps = steps;
        this.cookTime = cookTime;
        this.mealType = mealType;
        this.cuisine = cuisine;
        this.calories = calories;
        this.servingSize = servingSize;
    }

    // Getters & Setters
}

