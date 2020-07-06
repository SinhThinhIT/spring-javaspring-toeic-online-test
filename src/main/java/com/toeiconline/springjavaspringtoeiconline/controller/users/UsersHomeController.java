package com.toeiconline.springjavaspringtoeiconline.controller.users;

import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.LevelService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.service.impl.UsersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/users/")
public class UsersHomeController {
    @Autowired
    private UsersService usersService;
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @Autowired
    private LevelService levelService;
    @GetMapping("")
    public String index( Model model){
//        Users users = usersService.getCurrentUser();
//        model.addAttribute("users", users);
        List<LevelToeic> levelToeics = levelService.getLevel();
        model.addAttribute("levelToeics", levelToeics);
        return "users/index";
    }
    @GetMapping("rank")
    public String ranking(){
        return "users/rank";
    }
    @GetMapping("videos")
    public String videos(){
        return "users/videos";
    }
    @GetMapping("downloads")
    public String downloads(){
        return "users/download";
    }
}
