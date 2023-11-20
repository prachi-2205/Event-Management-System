package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserLogoutController {
	@GetMapping(value = "user/login")
	public ModelAndView login() {
		
		return new ModelAndView("user/login");
		
	}

}
