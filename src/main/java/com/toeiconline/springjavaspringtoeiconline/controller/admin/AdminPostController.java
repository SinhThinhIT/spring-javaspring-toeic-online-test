package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.dto.web.PostDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Category;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.CategoryService;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.service.impl.UsersServiceImpl;
import com.toeiconline.springjavaspringtoeiconline.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Optional;

@Controller
@RequestMapping(value = "/admin/post/")
public class AdminPostController {
    @Autowired
    private PostService postService;
    @Autowired
    private CategoryService categoryService;
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
    @GetMapping(value = "create")
    public String createPost(final Model model){
        model.addAttribute("postModel", new PostDTO());
        model.addAttribute("categoryList", categoryService.getCategoryAll());
        return "admin/post/create";
    }
    @PostMapping(value = "created")
    public String created(@ModelAttribute("postModel") PostDTO postDTO) {
        MultipartFile multipartFile = postDTO.getImage();
        if (!multipartFile.isEmpty()) {
            String fileName = "post - " + multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.POST_UPLOAD_LOCATION + fileName));
                Post post = new Post();
                post.setCategory(postDTO.getCategory());
                post.setTitle(postDTO.getTitle());
                post.setDescription(postDTO.getDescription());
                post.setParagraph(postDTO.getParagraph());
                post.setCreate_date(postDTO.getCreate_date());
                post.setImage(fileName);
                postService.createPost(post);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/admin/post/list";
    }
    @GetMapping(value = "edit/{id}")
    public String edit(@PathVariable(value = "id") Integer id, final Model model){
        Post post = postService.findById(id);
        if (post!=null){
            model.addAttribute("postModel", post);
            model.addAttribute("categoryList", categoryService.getCategoryAll());
            return "admin/post/edit";
        }else {
            return "error/404";
        }
    }
    @PostMapping(value = "edit")
    public String edited(@ModelAttribute("postModel") PostDTO postDTO, @RequestParam("id_post") Integer id){
        Post post = postService.findById(id);
        File file = new File(Constant.POST_UPLOAD_LOCATION + post.getImage());
        if (file.delete()){
            System.out.println("Delete Success");
        }else {
            System.out.println("Delete unsuccessfully");
        }
        MultipartFile multipartFile = postDTO.getImage();
        if (!multipartFile.isEmpty()){
            String fileName = multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.POST_UPLOAD_LOCATION + fileName));
                post.setCategory(postDTO.getCategory());
                post.setTitle(postDTO.getTitle());
                post.setDescription(postDTO.getDescription());
                post.setParagraph(postDTO.getParagraph());
                post.setUpdate_date(postDTO.getUpdate_date());
                post.setImage(fileName);
                postService.updatePost(post);
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return "redirect:/admin/post/list";
    }
    @GetMapping(value = "list")
    public String listAll(final Model model){
        model.addAttribute("postList", postService.getPostAll());
        return "admin/post/list";
    }
    @GetMapping(value = "delete/{id}")
    public String delete(@PathVariable("id") Integer id){
        postService.deleteById(id);
        return "redirect:/admin/post/list";
    }

}
