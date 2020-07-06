package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Optional;

public interface UsersService extends UserDetailsService {
    List<Users> findAll();
    Users findById(Integer id);
    Users findByUsername(String username);
    Boolean existsByUsername(String username);
    Boolean existsByEmail(String email);
    void saveUser(Users users);
//    Users findUsersByAdmin(boolean isAdmin);
    Users getCurrentUser();
    Users findByEmail(String email);
    List<Users> findUsersByAdmin(boolean isAdmin);
}
