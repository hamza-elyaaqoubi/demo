package com.hel.web.controller;

import com.hel.web.entity.User;
import com.hel.web.repository.UserDao;
import com.hel.web.service.UserService;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaSystemException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private UserService userService;

    @ModelAttribute("user")
    public User construct() {
        return new User();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getRegisterPage() {
        return "register";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String register(@ModelAttribute("user") User user) {
        try {
            userService.save(user);
        } catch (JpaSystemException e) {
            // TODO something in UserService directly
        }
        return "register";
    }

}
