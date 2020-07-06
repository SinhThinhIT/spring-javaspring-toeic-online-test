package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
//import com.toeiconline.springjavaspringtoeiconline.repository.RoleRepository;
//import com.toeiconline.springjavaspringtoeiconline.repository.RoleRepository;
import com.toeiconline.springjavaspringtoeiconline.repository.UsersRepository;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersRepository usersRepository;
    @Override
    public List<Users> findAll() {
        return usersRepository.findAll();
    }

    @Override
    public Users findById(Integer id) {
        return this.usersRepository.getOne(id);
    }
//    @Autowired
//    private BCryptPasswordEncoder bCryptPasswordEncoder;


    //    @Autowired
//    private RoleRepository roleRepository;
    @Override
    public Users findByUsername(String username) {
        return usersRepository.findByUsername(username);
    }

    @Override
    public Boolean existsByUsername(String username) {
        return usersRepository.existsByUsername(username);
    }

    @Override
    public Boolean existsByEmail(String email) {
        return usersRepository.existsByEmail(email);
    }

    @Override
    public void saveUser(Users users) {
        usersRepository.save(users);
    }

    @Override
    public List<Users> findUsersByAdmin(boolean isAdmin) {
        return this.usersRepository.findUsersByAdmin(isAdmin);
    }

    @Override
    public Users getCurrentUser() {
        Users user;
        String userName;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        user = this.findByUsername(userName);
        return user;
    }

    @Override
    public Users findByEmail(String email) {
        return this.usersRepository.findByEmail(email);
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Users users = usersRepository.findByUsername(username);
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        Set<Role> roles = users.getRoles();
        for (Role role : roles) {
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
        }
        // TODO truy cập vào database để lấy thông tin username
        return new org.springframework.security.core.userdetails.User(
                users.getUsername(), users.getPassword(), grantedAuthorities);
    }
}
