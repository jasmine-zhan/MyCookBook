package com.example.cms.controller.exceptions;

public class RecipeNotFoundException extends RuntimeException {

  public RecipeNotFoundException(String recipeId) {
    super("Could not find recipe with ID: " + recipeId);
  }
}

