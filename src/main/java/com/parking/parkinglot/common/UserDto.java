package com.parking.parkinglot.common;

import com.parking.parkinglot.entities.Car;

import java.util.Collection;

public class UserDto {
    private Long id;
    private String username;
    private String email;
    private String password;
//    private Collection<Car> cars;

    public UserDto(Long id, String username, String email) {
        this.id = id;
        this.username = username;
        this.email = email;
//        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}
