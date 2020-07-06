package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Role;

public interface RoleService {
    Role findByName(String name);
    Role save(Role role);
}
