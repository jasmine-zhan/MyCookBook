package com.example.cms.controller;

import com.example.cms.controller.exceptions.IngredientNotFoundException;
import com.example.cms.model.entity.Ingredient;
import com.example.cms.model.repository.IngredientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/ingredients")  // Base path for all methods in this controller
public class IngredientController {

    @Autowired
    private final IngredientRepository repository;

    public IngredientController(IngredientRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/findByName/{ingredientName}")
    public String findByName(@PathVariable ("ingredientName") String ingredientName){
        String id = repository.findIngredientID(ingredientName);
        if (!id.isEmpty()){
                return id;
        }
        else{
            throw new IngredientNotFoundException("Ingredient not found: " + ingredientName);
        }
    }

    // PASTED!
    @GetMapping("/findNameById/{ingredientId}")
    public List<String> findById(@PathVariable("ingredientId") String ingredientId) {
        // Split the comma-separated string into a list
        List<String> ingredientIds = Arrays.asList(ingredientId.split(","));
        List<String> names = repository.findIngredientName(ingredientIds);

        if (!names.isEmpty()) {
            return names;
        } else {
            throw new IngredientNotFoundException("Ingredient not found: " + ingredientIds);
        }
    }

    // New IngredientId
    @GetMapping("/generateNewId")
//    public String newId (){
//        String stringVal = Integer.toString(repository.generateNewIngredientNum());
//        return "I0"+stringVal;
    public String newId() {
        int newIdNum = repository.generateNewIngredientNum();
        return String.format("I%03d", newIdNum);
    }


    // Create a new ingredient
//    @PostMapping("/newIngredient")
//    public Ingredient createIngredient(@RequestBody Ingredient newIngredient) {
////        String stringVal = Integer.toString(repository.generateNewIngredientNum());
////        String id = "I0"+stringVal;
////        newIngredient.setId(id);
//        return repository.save(newIngredient);
//    }
//

    @PostMapping("/newIngredient")
    public Ingredient createIngredient(@RequestBody Ingredient newIngredient) {
        if (newIngredient.getIngredientId() == null || newIngredient.getIngredientId().isEmpty()) {
            String newId = newId(); // Call the method to generate a new ID
            newIngredient.setIngredientId(newId);

            System.out.println("new id generated: "+newId);
        }

        return repository.save(newIngredient);
    }


    // Retrieve all ingredients
    @GetMapping
    public List<Ingredient> retrieveAllIngredients() {
        return repository.findAll();
    }

    // Retrieve a specific ingredient by ID
    @GetMapping("/{id}")
    public Ingredient retrieveIngredient(@PathVariable("id") String ingredientId) {
        return repository.findById(ingredientId)
                .orElseThrow(() -> new IngredientNotFoundException(ingredientId));
    }

    // Update an existing ingredient by ID
    @PutMapping("/{id}")
    public Ingredient updateIngredient(@RequestBody Ingredient newIngredient, @PathVariable("id") String ingredientId) {
        return repository.findById(ingredientId)
                .map(ingredient -> {
                    ingredient.setName(newIngredient.getName());
                    ingredient.setFoodGroup(newIngredient.getFoodGroup());
                    return repository.save(ingredient);
                })
                .orElseGet(() -> {
                    newIngredient.setIngredientId(ingredientId);
                    return repository.save(newIngredient);
                });
    }

    // Delete an ingredient by ID
    @DeleteMapping("/{id}")
    public void deleteIngredient(@PathVariable("id") String ingredientId) {
        repository.deleteById(ingredientId);
    }
}

