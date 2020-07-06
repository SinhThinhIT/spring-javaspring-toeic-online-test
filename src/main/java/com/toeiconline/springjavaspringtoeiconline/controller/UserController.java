package com.toeiconline.springjavaspringtoeiconline.controller;

import com.toeiconline.springjavaspringtoeiconline.entity.PasswordTokenReset;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.forms.RegisterForm;
import com.toeiconline.springjavaspringtoeiconline.service.PasswordResetService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.utils.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;


@Controller
public class UserController {
    @Autowired
    private PasswordResetService passwordResetService;
    @Autowired
    private UsersService usersService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private EmailService emailService;

    @GetMapping("/registration")
    public String registration(final Model model){
        model.addAttribute("registration", new RegisterForm());
        return "signup";
    }
    @PostMapping("/registration")
    public String success(final Model model, @ModelAttribute("registration") RegisterForm registerForm, HttpServletRequest request){
        if (usersService.existsByEmail(registerForm.getEmail())||
                usersService.existsByUsername(registerForm.getUsername()) ||
                !registerForm.getConfirm().equals(registerForm.getPassword())){
            return "signup";
        }
        Role role = roleService.findByName("ROLE_MEMBER");
        Users users = new Users();
        users.setEmail(registerForm.getEmail());
        users.setUsername(registerForm.getUsername());
        users.setPassword(passwordEncoder.encode(registerForm.getConfirm()));
        users.setAdmin(false);
        HashSet<Role> roles = new HashSet<>();
        roles.add(role);
        users.setRoles(roles);
        users.setCreate_date(new Date());
        usersService.saveUser(users);
        PasswordTokenReset tokenReset = new PasswordTokenReset(users);
        tokenReset.setExpiryDate(1);
        passwordResetService.saveToken(tokenReset);
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(users.getEmail());
        mailMessage.setSubject("Đăng ký thành công!");
        mailMessage.setText("Vui lòng hoàn tất đăng ký , click vào đường dẫn: "+ request.getScheme()+"://"+
                request.getServerName()+":"+request.getServerPort()+"/confirm-account?token="+ tokenReset.getToken());
        emailService.sendEmail(mailMessage);
        return "redirect:/index";
    }
    @RequestMapping(value = "/confirm-account", method = {RequestMethod.GET, RequestMethod.POST})
    public String confirmUserAccount(@RequestParam("token") String token){
        PasswordTokenReset tokenReset = passwordResetService.findByToken(token);
        if (tokenReset!=null){
            boolean isExpired = tokenReset.isExpired();
            if (!isExpired){
                Users users = usersService.findByEmail(tokenReset.getUsers().getEmail());
                users.setStatus(true);
                usersService.saveUser(users);
//                passwordResetService.delete(tokenReset);
                return "accountVerified";
            }
        }
        return "error/404";
    }
}
