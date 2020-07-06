package com.toeiconline.springjavaspringtoeiconline.configuration;

import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.HashSet;

@Component
public class DataSeedingListener implements ApplicationListener<ContextRefreshedEvent> {
    @Autowired
    private RoleService roleService;
    @Autowired
    private UsersService usersService;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        // Roles
        if (roleService.findByName("ROLE_ADMIN") == null) {
            roleService.save(new Role("ROLE_ADMIN"));
        }

        if (roleService.findByName("ROLE_MEMBER") == null) {
            roleService.save(new Role("ROLE_MEMBER"));
        }
        //Account ADMIN, MEMBER
        if (usersService.findByUsername("thinhluffy")==null){
            Users users = new Users();
            users.setAdmin(true);
            users.setEmail("thinhle27081995@gmail.com");
            users.setUsername("thinhluffy");
            users.setPassword(passwordEncoder.encode("123456"));
            users.setStatus(true);
            users.setPhone("0964238591");
            HashSet<Role> roles = new HashSet<>();
            roles.add(roleService.findByName("ROLE_ADMIN"));
            roles.add(roleService.findByName("ROLE_MEMBER"));
            users.setRoles(roles);
            usersService.saveUser(users);
        }
    }
}
