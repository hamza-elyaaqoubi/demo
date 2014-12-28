package com.hel.web.controller;

import com.hel.web.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/roles")
public class RoleController {

    @Autowired
    private RoleService rolesService;

    @RequestMapping(method = RequestMethod.GET)
    public String getRoles(Model model) {
        model.addAttribute("roles", rolesService.findAllRoles());
        return "roles";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getUserByRole(Model model, @PathVariable Integer id) {
        model.addAttribute("role", rolesService.findUsersByRole(id));
        return "role_users";
    }
}
