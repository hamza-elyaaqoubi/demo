package com.hel.web.controller;

import com.hel.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService usersService;

    @RequestMapping(method = RequestMethod.GET)
    public String getLogin(Model model) {
        model.addAttribute("users", usersService.findAllUsers());
        return "users";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getDetails(Model model, @PathVariable Integer id) {
        model.addAttribute("user", usersService.findUserByRole(id));
        return "user-detail";
    }
}

