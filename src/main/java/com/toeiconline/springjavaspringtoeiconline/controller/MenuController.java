package com.toeiconline.springjavaspringtoeiconline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {
//    @GetMapping("/blog_news")
//    public String blogNews(){
//        return "blog_news";
//    }
    @GetMapping("/details")
    public String details(){
        return "details";
    }
//    @GetMapping("/login")
//    public String login(){
//        return "login";
//    }
//    @GetMapping("/signup")
//    public String signup(){
//        return "signup";
//    }
    @GetMapping("/about")
    public String about(){
        return "about";
    }
//    @GetMapping("/forget")
//    public String forget(){
//        return "forget";
//    }

}
