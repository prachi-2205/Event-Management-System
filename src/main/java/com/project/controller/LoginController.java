package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityEventVO;
import com.project.model.EventTypeVO;
import com.project.model.UserVO;
import com.project.service.CityEventService;
import com.project.service.EventTypeService;

@Controller
public class LoginController {

	@Autowired
	private EventTypeService eventtypeService;

	@Autowired
	private CityEventService cityEventService;

	@RequestMapping(value = { "/", "index" }, method = RequestMethod.GET)
	public ModelAndView loadLogin() {
		return new ModelAndView("/index");
	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {
		return new ModelAndView("admin/index");
	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {
		// TODO : City Events, Events

		List<EventTypeVO> eventTypeList = this.eventtypeService.GetEventType();
		List<CityEventVO> cityEventList = this.cityEventService.getCityEventList();
		return new ModelAndView("user/index", "eventTypeList", eventTypeList).addObject("cityEventList", cityEventList);
	}

	@RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}
		return "/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load(@RequestParam(required = false) String error) {

		System.out.println(error);

		return new ModelAndView("login","err",error);
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}

	@GetMapping(value = "/registration")
	public ModelAndView registration() {

		return new ModelAndView("registration", "UserVO", new UserVO());

	}

	@GetMapping(value = "/aboutus")
	public ModelAndView aboutus() {

		return new ModelAndView("aboutus");

	}

	@GetMapping(value = "/gallery")
	public ModelAndView gallery() {

		return new ModelAndView("gallery");

	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView loaderror() {

		return new ModelAndView("login");
	}

}