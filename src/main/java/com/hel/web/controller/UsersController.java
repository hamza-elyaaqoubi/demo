package com.hel.web.controller;

import com.hel.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UsersController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("/users")
    public String loginPage(Model model) {
        model.addAttribute("users", userService.getAllUser());
        return "users";
    }
    
    @RequestMapping("/users/{username}")
    public String getDetails(Model model, @PathVariable String username) {
        model.addAttribute("user", userService.getUser(username));
        return "user-detail";
    }
}

