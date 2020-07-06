package com.toeiconline.springjavaspringtoeiconline.controller;

import com.toeiconline.springjavaspringtoeiconline.dto.Title;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.CategoryService;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private PostService postService;
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @RequestMapping(value = {"/index" , "/"}, method = RequestMethod.GET)
    public String index(final Model model){
        model.addAttribute("title", new Title("Home"));
        model.addAttribute("postList", postService.getPostAll());
        return "index";
    }
    @GetMapping("/403")
    public String error(){
        return "error/404";
    }
}
