package com.hel.web.controller;

import com.hel.web.service.RolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {

    @Autowired
    private RolesService rolesService;

    @RequestMapping("/roles")
    public String roles(Model model) {
        model.addAttribute("roles", rolesService.findAllRoles());
        return "roles";
    }
}
