package com.csc340.crudapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ConnectionController {

    @GetMapping({"/home", "/", "/all", "/list"})
    public String home() {
        return "redirect:/task/all";
    }
}
