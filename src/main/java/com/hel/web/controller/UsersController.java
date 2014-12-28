package com.hel.web.controller;

import com.hel.web.repository.UserDao;
import com.hel.web.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersController {

    @Autowired
    private UsersService usersService;

    @RequestMapping("/users")
    public String loginPage(Model model) {
        model.addAttribute("users", usersService.findAllUsers());
        return "users";
    }

    @RequestMapping("/users/{id}")
    public String getDetails(Model model, @PathVariable Integer id) {
        // model.addAttribute("user", usersService.findUserById(id));
        model.addAttribute("userWithRoles", usersService.findUserByRole(id));
        return "user-detail";
    }
}

