package com.toeiconline.springjavaspringtoeiconline.controller.users;

import com.toeiconline.springjavaspringtoeiconline.dto.web.AvatarDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Avatar;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.AvatarService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping(value = "/users/update/")
public class UsersController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private AvatarService avatarService;
    @ModelAttribute(value = "users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @GetMapping("settings")
    public String settings(){
        return "users/settings";
    }
    //Xem tat ca
    @GetMapping("profile")
    public String getALl(Model model){
        Avatar avatar  = avatarService.findAvatarByUsers(users());
        model.addAttribute("avatarUsers", avatar);
        return "users/profile";
    }
    @GetMapping("editProfile")
    public String editForm(Model model){
        model.addAttribute("users", users());
        model.addAttribute("avatarUsers", new AvatarDTO());
        return "users/edit";
    }
    @PostMapping("saveProfile")
    public String saveProfile(@ModelAttribute("avatarUsers") AvatarDTO avatarDTO){
        MultipartFile multipartFile = avatarDTO.getImage();
        if(!multipartFile.isEmpty()) {
            String fileName = "avatar - " + multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.AVATAR_UPLOAD_LOCATION + fileName));
                Avatar avatar = new Avatar();
                avatar.setName(avatarDTO.getName());
                avatar.setAddress(avatarDTO.getAddress());
                avatar.setImage(fileName);
                avatar.setUsers(users());
                avatar.setCreate_date(avatarDTO.getCreate_date());
                avatarService.saveAvatar(avatar);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "users/edit";
    }
    //Sua
    @GetMapping("edit/{id}")
    public String editForm(@PathVariable(value = "id") Integer id, final Model model){
        Avatar avatar = avatarService.findById(id);
        if (avatar!=null){
            model.addAttribute("avatarUsers", avatar);
            return "users/editInfo";
        }
        return "error/404";
    }
    @PostMapping("updateEdit")
    public String editedUsers(@ModelAttribute("avatarUsers") AvatarDTO avatarDTO, @RequestParam("id_avatar") Integer id){
        Avatar avatar = avatarService.findById(id);
        File file = new File(Constant.AVATAR_UPLOAD_LOCATION+ avatar.getImage());
        if (file.delete()){
            System.out.println("Delete Success");
        }else {
            System.out.println("Delete unsuccessfully");
        }
        MultipartFile multipartFile = avatarDTO.getImage();
        if(!multipartFile.isEmpty()) {
            String fileName = multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.AVATAR_UPLOAD_LOCATION + fileName));
                avatar.setName(avatarDTO.getName());
                avatar.setAddress(avatarDTO.getAddress());
                avatar.setImage(fileName);
                avatar.setUpdate_date(avatarDTO.getUpdate_date());
                avatarService.updateAvatar(avatar);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/users/update/profile";
    }

}
