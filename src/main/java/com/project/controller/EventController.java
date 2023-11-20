package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.EventTypeVO;
import com.project.model.EventVO;
import com.project.service.EventService;
import com.project.service.EventTypeService;

@Controller
public class EventController {

	@Autowired
	private EventService eventservice;

	@Autowired
	private EventTypeService eventtypeservice;

	@GetMapping(value = "admin/addEvent")
	public ModelAndView addEvent() {
		List<EventTypeVO> eventTypeList = this.eventtypeservice.GetEventType();
		return new ModelAndView("admin/addEvent", "EventVO", new EventVO()).addObject("eventTypeList", eventTypeList)
				.addObject("type", "Add").addObject("button", "Save");
	}

	@GetMapping(value = "admin/viewEvent")
	public ModelAndView viewEvent() {
		List<EventVO> eventList = this.eventservice.getEvent();
		return new ModelAndView("admin/viewEvent", "eventList", eventList);
	}

	/*@GetMapping(value = { "user/viewEventForMenu", "viewEventForMenu" })
	public ResponseEntity viewEventForMenu() {
		List<EventVO> eventList = this.eventservice.getEvent();
		return new ResponseEntity(eventList, HttpStatus.OK);
	}*/

	@PostMapping(value = "admin/saveEvent")
	public ModelAndView saveEvent(@ModelAttribute EventVO eventVO) {

		this.eventservice.saveEvent(eventVO);
		return new ModelAndView("redirect:/admin/viewEvent");
	}
	@GetMapping(value = "admin/deleteEvent")
	public ModelAndView deleteEvent(@ModelAttribute EventVO eventVO, @RequestParam int id) {
		List<EventVO> eventList = this.eventservice.findById(eventVO);

		eventVO = eventList.get(0);
		eventVO.setStatus(false);

		this.eventservice.saveEvent(eventVO);

		return new ModelAndView("redirect:/admin/viewEvent");
	}

	@GetMapping(value = "admin/editEvent")
	public ModelAndView edit(@ModelAttribute EventVO eventVO, @RequestParam int id) {

		List<EventTypeVO> eventTypeList = this.eventtypeservice.GetEventType();
		List<EventVO> eventList = this.eventservice.findById(eventVO);

		eventVO = eventList.get(0);

		return new ModelAndView("admin/addEvent", "EventVO", eventVO).addObject("eventTypeList", eventTypeList)
				.addObject("type", "Edit").addObject("button", "Update");
	}
	
	

}