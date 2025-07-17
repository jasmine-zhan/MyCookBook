package com.example.cms.controller.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDto {
    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private int loggedIn;
}
