package com.toeiconline.springjavaspringtoeiconline.controller.users;

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
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/users/")
public class UsersCommentController {
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
    @PostMapping("saveComment")
    public String saveComment(@RequestParam("id_post") Integer id, @ModelAttribute("commentWeb") CommentDTO commentDTO){
        Post post = postService.findById(id);
        Comment comment = new Comment();
        comment.setParagraph(commentDTO.getParagraph());
        comment.setPost(post);
        comment.setUsers(users());
        comment.setCreate_date(commentDTO.getCreate_date());
        commentService.saveComment(comment);
        return "redirect:/viewpost/"+id;
    }
    //Edit
    @GetMapping("edit/{id}")
    public String editForm(@PathVariable("id") Integer id, final Model model){
        Comment comment = commentService.findById(id);
        model.addAttribute("commentEdit", comment);
        return "edit_comment";
    }
    @PostMapping("edit")
    public String edited(@RequestParam("id_comment") Integer id,@ModelAttribute("commentEdit") CommentDTO commentDTO){
        Comment comment = commentService.findById(id);
        if (comment.getUsers().equals(users())){
            comment.setParagraph(commentDTO.getParagraph());
            comment.setUpdate_date(commentDTO.getUpdate_date());
            comment.setUsers(users());
            comment.setPost(comment.getPost());
            commentService.updateComment(comment);
            return "redirect:/viewpost/"+comment.getPost().getId_post();
        }
        return "edit_comment";
    }
    //Delete
    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id") Integer id, final Model model){
        Comment comment = commentService.findById(id);
        if (comment.getUsers().equals(users())){
            commentService.deteleById(id);
            return "redirect:/viewpost/"+comment.getPost().getId_post();
        }
        return "error/404";
    }
}
