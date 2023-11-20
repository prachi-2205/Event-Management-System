package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.EventTypeVO;

import com.project.service.EventTypeService;

@Controller
public class UserEventController {
	@Autowired
	private EventTypeService  eventtypeService;
	@GetMapping(value = "user/viewEvent")
	public ModelAndView viewEvent() {
		
		List<EventTypeVO> eventTypeList = this.eventtypeService.GetEventType();
		return new ModelAndView("user/viewEvent","eventTypeList",eventTypeList);
	}

}