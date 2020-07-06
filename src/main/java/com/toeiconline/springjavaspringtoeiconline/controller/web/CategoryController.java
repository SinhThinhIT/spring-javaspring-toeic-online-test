package com.toeiconline.springjavaspringtoeiconline.controller.web;

import com.toeiconline.springjavaspringtoeiconline.dto.Title;
import com.toeiconline.springjavaspringtoeiconline.service.CategoryService;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private PostService postService;
    @GetMapping("/blog_news")
    public String blogNews(Model model){
        model.addAttribute("title", new Title("Tin Tức"));
        model.addAttribute("categoryList", categoryService.getCategoryAll());
        model.addAttribute("postList", postService.getPostAll());
        return "blog_news";
    }
}
