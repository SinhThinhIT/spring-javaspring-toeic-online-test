package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.dto.web.LevelToeicDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.LevelService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/level/")
public class AdminLevelToeicController {
    @Autowired
    private LevelService levelService;
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
    @GetMapping("view")
    public String view(final Model model){
        List<LevelToeic> levelToeics = levelService.getLevel();
        model.addAttribute("levelToeics", levelToeics);
        return "admin/level/list";
    }
    @GetMapping("createLevel")
    public String createLevel(final Model model){
        model.addAttribute("level", new LevelToeicDTO());
        return "admin/level/create";
    }
    @PostMapping("save")
    public String created(@ModelAttribute("level") LevelToeicDTO levelToeicDTO){
        LevelToeic levelToeic = new LevelToeic();
        levelToeic.setTitle(levelToeicDTO.getTitle());
        levelToeic.setCreate_date(levelToeicDTO.getCreate_date());
        levelToeic.setUsers(users());
        levelService.saveLevel(levelToeic);
        return "redirect:/admin/level/view";
    }
    @GetMapping("edit/{id_level}")
    public String editForm(@PathVariable("id_level") Integer id,final Model model){
        LevelToeic levelToeic = levelService.findById(id);
        model.addAttribute("levelToeic", levelToeic);
        return "admin/level/edit";
    }
    @PostMapping("edit")
    public String edit(@RequestParam("id_level") Integer id,@ModelAttribute("levelToeic") LevelToeicDTO levelToeicDTO, final Model model){
        LevelToeic levelToeic = levelService.findById(id);
        levelToeic.setTitle(levelToeicDTO.getTitle());
        levelToeic.setUpdate_date(levelToeicDTO.getUpdate_date());
        levelService.updateLevel(levelToeic);
        return "redirect:/admin/level/view";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id){
        levelService.deleteById(id);
        return "redirect:/admin/level/view";
    }
}
