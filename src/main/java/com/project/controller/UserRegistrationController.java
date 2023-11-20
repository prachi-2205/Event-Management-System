package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.EventVO;
import com.project.model.LoginVO;
import com.project.model.UserVO;
import com.project.service.LoginService;
import com.project.service.UserService;

@Controller
public class UserRegistrationController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private LoginService loginService;
	
	@PostMapping(value = "/saveUserReg")
	public ModelAndView saveUserReg(@ModelAttribute UserVO UserVO ) {
		
		LoginVO loginVO = UserVO.getLoginvo();
		
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_USER");
		this.loginService.saveUserReg(loginVO);
		this.userService.saveUserReg(UserVO);
		/*return new ModelAndView("user/index");*/
		return new ModelAndView("login");
	}
}
