package com.toeiconline.springjavaspringtoeiconline.controller;

import com.toeiconline.springjavaspringtoeiconline.dto.PasswordForgot;
import com.toeiconline.springjavaspringtoeiconline.entity.PasswordTokenReset;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.PasswordResetService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.utils.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

@Controller
public class ForgotPasswordController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private PasswordResetService tokenReset;
    @Autowired
    private EmailService emailService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @GetMapping("/forgotPassword")
    public String forgotPassWordForm(final Model model){
        model.addAttribute("forgotPassword", new PasswordForgot());
        return "forget";
    }
    @PostMapping("/forgotPassword")
    public String forgotPassword(final Model model,@ModelAttribute PasswordForgot passwordForgot, HttpServletRequest request){
        Users users = usersService.findByEmail(passwordForgot.getEmail());
        if (users==null){
            return "error/404";
        }
        model.addAttribute("forgotPassword", passwordForgot);
        PasswordTokenReset passwordTokenReset = new PasswordTokenReset(users);
        passwordTokenReset.setToken(UUID.randomUUID().toString());
        passwordTokenReset.setExpiryDate(1);
        tokenReset.saveToken(passwordTokenReset);
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(users.getEmail());
        mailMessage.setSubject("Thay doi mat khau!");
        mailMessage.setText("Vui long nhan vao day de thay doi mat khau!"+ request.getScheme()+"://"+
                request.getServerName()+":"+request.getServerPort()+"/newPassword?token="+ passwordTokenReset.getToken()+ "&id="+users.getId_user());
        emailService.sendEmail(mailMessage);
        return "forget";
    }
//    @GetMapping("/newPassword/{id_user}")
//    private String showNewPasswordForm(@PathVariable("id_user") Integer id, @RequestParam("token") String token, final Model model){
//        PasswordTokenReset passwordTokenReset = tokenReset.findByToken(token);
//        if (passwordTokenReset!=null){
//            boolean isExpired = passwordTokenReset.isExpired();
//            if (!isExpired){
//                Users users = usersService.findById(id);
//                if (users!=null){
//                    model.addAttribute("users", users);
//                    return "newPassword";
//                }
//            }
//        }
//        return "error/404";
//    }

    // http://localhost:2000/newPassword?token=a09f65a2-b688-43cc-a068-afe0a3354426&id=10
    @RequestMapping(value = "/newPassword", method = {RequestMethod.GET})
    public String newPassword(final Model model, HttpServletRequest request){
            String id = request.getParameter("id");
            String token = request.getParameter("token");
            PasswordTokenReset passwordTokenReset = tokenReset.findByToken(token);
            if (passwordTokenReset!=null){
                    Users users = usersService.findById(Integer.valueOf(id));
                    if (users!=null){
                        model.addAttribute("users", users);
//                        model.addAttribute("changePass", new PasswordReset());
                        return "newPassword";
                    }
            }
            return "error/404";
    }

    @RequestMapping(value = "/newPassword", method = {RequestMethod.POST})
    public String newPassword(@ModelAttribute("users") Users users, HttpServletRequest request){
        String newPass = passwordEncoder.encode(users.getPassword());
        users = usersService.findById(users.getId_user());
        if (users!=null){
            users.setPassword(newPass);
            usersService.saveUser(users);
            return "newPassword";
        }
        return "error/404";
    }

}
