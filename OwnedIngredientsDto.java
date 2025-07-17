package com.example.cms.controller.dto;

import com.example.cms.model.entity.Ingredient;
import com.example.cms.model.entity.User;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OwnedIngredientsDto {

    private String user;
    private String ingredientName;
    private Double currentQuantity;

}

