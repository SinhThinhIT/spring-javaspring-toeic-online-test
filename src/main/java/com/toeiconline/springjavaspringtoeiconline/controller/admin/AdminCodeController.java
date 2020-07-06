package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.entity.CodeExam;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.CodeExamService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/code/")
public class AdminCodeController {
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

    @Autowired
    private CodeExamService codeExamService;

    @GetMapping("list")
    public String getAll(final Model model){
        List<CodeExam> codeExams = codeExamService.getAllCode();
        model.addAttribute("codeExams", codeExams);
        return "admin/code/list";
    }
    @GetMapping("create")
    public String create(final Model model){
        model.addAttribute("examCode", new CodeExam());
        return "admin/code/create";
    }
    @PostMapping("save")
    public String save(final Model model, @ModelAttribute("examCode") CodeExam codeExam){
        codeExamService.createCode(codeExam);
        return "redirect:/admin/code/list";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id){
        codeExamService.deleteById(id);
        return "redirect:/admin/code/list";
    }
}
