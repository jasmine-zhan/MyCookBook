package com.example.cms.controller.exceptions;

public class UserEmailExistsException extends RuntimeException{
    public UserEmailExistsException(String email) {
        super("Account with this email already exists: " + email);
    }
}
