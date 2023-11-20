package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAboutUsController {

	@GetMapping(value = "user/aboutus")
	public ModelAndView aboutus() {
		
		return new ModelAndView("user/aboutus");
		
	}
}
