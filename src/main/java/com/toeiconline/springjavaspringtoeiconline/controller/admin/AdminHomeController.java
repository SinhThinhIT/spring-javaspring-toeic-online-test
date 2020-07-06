package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/admin/")
public class AdminHomeController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private RoleService roleService;
    @ModelAttribute("roles")
    public Role role(){
        return roleService.findByName("ROLE_ADMIN");
    }
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @GetMapping(value = "")
    public String index(final Model model){
        List<Users> usersList = usersService.findUsersByAdmin(false);
        model.addAttribute("userList", usersList);
        return "admin/index";
    }
    @GetMapping(value = "edit-Info")
    public String editInfo(){
        return "admin/edit_info";
    }
}
