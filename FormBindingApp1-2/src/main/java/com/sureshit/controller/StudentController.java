package com.sureshit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sureshit.pojo.Student;

@Controller
public class StudentController {
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/form")
	public String index(Model model) {
		Student std= new Student();
		model.addAttribute("addForm", std);
		return "addForm";
	}

	@GetMapping("/register")
	public String index(@ModelAttribute("addForm") Student std) {
		return "addForm";
	}
	@GetMapping("/registration-success")
	public String processReg(@ModelAttribute("addForm") Student std) {
		return "registration-success";
	}
	
}
