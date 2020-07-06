package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminSecurityController {
    @RequestMapping(value = "/login")
    public String login() {
        return "login"; // view là trang login của mình thiết kế.
    }
}
