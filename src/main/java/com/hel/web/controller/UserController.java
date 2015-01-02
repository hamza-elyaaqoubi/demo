package com.hel.web.controller;

import com.hel.web.entity.User;
import com.hel.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    // This attribute is gated from the jsp form 'commandName attribute'
    @ModelAttribute("user")
    private User initUser() {
        return new User();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String retrieveAllUsers(Model model) {
        model.addAttribute("users", userService.findAllUsers());
        return "users";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getUserInformation(Model model, @PathVariable Integer id) {
        model.addAttribute("user", userService.findUserByRole(id));
        return "userDetail";
    }

    @RequestMapping(value = "/myAccount", method = RequestMethod.GET)
    public String retrieveAccount(Model model, Principal principal) {
        User user = userService.findUserByEmail(principal.getName());
        model.addAttribute("user", user);
        return "myAccount";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addNewUser(@ModelAttribute("user") User user) {
        userService.saveAndFlush(user);
        return "redirect:/users";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable int id) {
        userService.deleteUser(id);
        return "redirect:/users";
    }
}

