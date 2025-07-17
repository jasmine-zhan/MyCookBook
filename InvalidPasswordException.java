package com.example.cms.controller.exceptions;

public class InvalidPasswordException extends RuntimeException{
    public InvalidPasswordException() {
        super("Invalid password: Length must be between 8 and 20 characters");
    }
}
