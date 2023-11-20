package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class UserContactUsController {
	
	@GetMapping(value = "user/contactus")
	public ModelAndView contactus() {
		
		return new ModelAndView("user/contactus");
		
	}

}
