package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.dto.web.CategoryDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Category;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.CategoryService;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/admin/category/")
public class AdminCategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private PostService postService;
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
    //    Create Category
    @GetMapping(value = "create")
    public String create(@ModelAttribute("users") Users users, final Model model){
        model.addAttribute("category", new CategoryDTO());
        return "admin/category/create";
    }
    @PostMapping(value = "save")
    public String saveCategory(final Model model, @ModelAttribute("category") CategoryDTO categoryDTO){
        MultipartFile multipartFile = categoryDTO.getImage();
        if (!multipartFile.isEmpty()){
            String fileName = "category - " + multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.CATEGORY_UPLOAD_LOCATION + fileName));
                Category category = new Category();
                category.setTitle(categoryDTO.getTitle());
                category.setUsers(users());
                category.setImage(fileName);
                category.setCreate_date(categoryDTO.getCreate_date());
                categoryService.createCategory(category);
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return "redirect:/admin/category/list";
    }
    @GetMapping(value = "edit/{id}")
    public String edit(final Model model, @PathVariable("id") Integer id){
        Category category = categoryService.findById(id);
        if(category!=null){
            model.addAttribute("category", category);
            return "admin/category/edit";
        }else {
            return "error/404";
        }
    }
    @PostMapping(value = "edit")
    public String editCategory(@RequestParam("id_category") Integer id, @ModelAttribute("category") CategoryDTO categoryDTO){
        Category category = categoryService.findById(id);
        File file = new File(Constant.CATEGORY_UPLOAD_LOCATION + categoryDTO.getImage());
        if (file.delete()){
            System.out.println("Delete Success");
        }else {
            System.out.println("Delete unsuccessfully");
        }
        MultipartFile multipartFile = categoryDTO.getImage();
        if (!multipartFile.isEmpty()){
            String fileName = multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.CATEGORY_UPLOAD_LOCATION + fileName));
                category.setTitle(categoryDTO.getTitle());
                category.setImage(fileName);
                category.setUpdate_date(categoryDTO.getUpdate_date());
                categoryService.updateCategory(category);
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return "redirect:/admin/category/list";
    }
    @GetMapping(value = "list")
    public String list( final Model model){
        model.addAttribute("categoryList", categoryService.getCategoryAll());
        return "admin/category/list";
    }
    @GetMapping(value = "view-category/{id}")
    public String listAll(@PathVariable("id") Integer id, final Model model){
        Category category = categoryService.findById(id);
        List<Post> postList = postService.findAllPost(category);
        model.addAttribute("category", category);
        model.addAttribute("postList", postList);
        return "admin/category/view";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id){
        categoryService.deleteById(id);
        return "redirect:/admin/category/list";
    }
}
