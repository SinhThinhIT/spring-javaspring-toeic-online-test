package com.toeiconline.springjavaspringtoeiconline.controller.web;

import com.toeiconline.springjavaspringtoeiconline.dto.web.CommentDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Comment;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.CommentService;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PostController {
    @Autowired
    private CommentService commentService;
    @Autowired
    private PostService postService;
    @Autowired
    private UsersService usersService;
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @GetMapping("/viewpost/{id}")
    public String viewPost(@PathVariable(value = "id") Integer id, Model model){
        int countCommet = commentService.count();
        Post postView = postService.findById(id);
        List<Comment> comment = commentService.findByPost(postView);
        model.addAttribute("number",countCommet);
        model.addAttribute("postView", postView);
        model.addAttribute("commentView", comment);
        model.addAttribute("commentWeb", new CommentDTO());
        return "details";
    }
}
