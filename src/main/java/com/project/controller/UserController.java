package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AddonVO;
import com.project.model.EventTypeVO;
import com.project.model.LoginVO;
import com.project.model.UserVO;
import com.project.service.LoginService;
import com.project.service.UserService;

@Controller
public class UserController {
	@Autowired
	private LoginService loginservice;

	@Autowired
	private UserService userService;

	@GetMapping(value = "admin/viewUser1")
	public ModelAndView viewUser() {

		List<UserVO> userList = this.userService.getUser();
		return new ModelAndView("admin/viewUser", "userList", userList);
	}

	@GetMapping(value = "admin/changeAccountStatus")
	public ModelAndView changeAccountStatus(@RequestParam String flag,@RequestParam int id) {
		List<LoginVO> loginList = this.loginservice.viewUser(id);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>"+loginList.size());
		LoginVO loginVO = loginList.get(0);
		loginVO.setEnabled(flag);
		loginVO.setLoginId(id);
		this.loginservice.saveUserReg(loginVO);
		List<UserVO> userList = this.userService.getUser();
		return new ModelAndView("admin/viewUser", "userList", userList);
	}

}