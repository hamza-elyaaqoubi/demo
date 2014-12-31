package com.hel.web.controller;

import antlr.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/404")
public class ErrorController {

    @RequestMapping(method = RequestMethod.GET)
    public String load404Error() {
        return "404";
    }
}
