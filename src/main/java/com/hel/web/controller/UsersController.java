package com.hel.web.controller;

import com.hel.web.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersController {

    @Autowired
    private UserDao userDao;

    @RequestMapping("/users")
    public String loginPage(Model model) {
        model.addAttribute("users", userDao.findAll());
        return "users";
    }

    @RequestMapping("/users/{username}")
    public String getDetails(Model model, @PathVariable String username) {
        model.addAttribute("user", userDao.findOne(1));
        return "user-detail";
    }
}

