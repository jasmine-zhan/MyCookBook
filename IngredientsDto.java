package com.example.cms.controller.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IngredientsDto {
    private String ingredientId;
    private String name;
    private String foodGroup;
    private int shelfLife;

    public IngredientsDto(String ingredientId, String name, String foodGroup, int shelfLife) {
        this.ingredientId = ingredientId;
        this.name = name;
        this.foodGroup = foodGroup;
        this.shelfLife = shelfLife;
    }
}
