package com.example.administration.controller;

import com.example.administration.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FirstAppController {
    @GetMapping("/student")
    @ResponseBody
    public Student getStudent() {
        return new Student("Vera", "Ryzhova", "IKBO-16-21");
    }
}
