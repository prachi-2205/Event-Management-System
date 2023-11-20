package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserCatalogController {
	
	@GetMapping(value = "user/portfolioclassic")
	public ModelAndView portfolioclassic() {
		
		return new ModelAndView("user/portfolioclassic");
		
	}


}
