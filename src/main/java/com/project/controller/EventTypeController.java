package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.*;
import com.project.service.EventTypeService;

@Controller
public class EventTypeController {
	@Autowired
	private EventTypeService eventtypeservice;

	@GetMapping(value = "admin/addEventType")
	public ModelAndView addEventsType() {
		return new ModelAndView("admin/addEventType", "EventTypeVO", new EventTypeVO()).addObject("type", "Add")
				.addObject("button", "Save");
	}

	@GetMapping(value = "admin/viewEventType")
	public ModelAndView viewEventType() {
		List<EventTypeVO> eventTypeList = this.eventtypeservice.GetEventType();
		return new ModelAndView("admin/viewEventType", "eventTypeList", eventTypeList);
	}

	@PostMapping(value = "admin/saveEventType")
	public ModelAndView saveEventType(@ModelAttribute EventTypeVO eventTypeVO, HttpServletRequest request,@RequestParam MultipartFile file) {
	
		this.eventtypeservice.saveEventType(eventTypeVO);
		
		
		if (eventTypeVO.getId()> 0) {
			List<EventTypeVO> eventTypeList = this.eventtypeservice.findById(eventTypeVO);
			EventTypeVO eventypeVO2 = eventTypeList.get(0);

			String path = request.getSession().getServletContext().getRealPath("/");
			String filePath = path + "documents\\eventType\\";

			File f = new File(filePath + eventypeVO2.getFileName());
			f.delete();

		}
		String path = request.getSession().getServletContext().getRealPath("/");

		String fileName = file.getOriginalFilename();

		String filePath = path + "documents\\eventType\\";

		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		eventTypeVO.setFileName(fileName);
		eventTypeVO.setFilePath(filePath);

		this.eventtypeservice.saveEventType(eventTypeVO);
		
		return new ModelAndView("redirect:/admin/viewEventType");
	}

	@GetMapping(value = "admin/deleteEventType")
	public ModelAndView deleteEventType(@ModelAttribute EventTypeVO eventTypeVO, @RequestParam int id) {
		List<EventTypeVO> eventTypeList = this.eventtypeservice.findById(eventTypeVO);
		eventTypeVO = eventTypeList.get(0);
		eventTypeVO.setStatus(false);
		this.eventtypeservice.saveEventType(eventTypeVO);
		return new ModelAndView("redirect:/admin/viewEventType");
	}

	@GetMapping(value = "admin/editEventType")
	public ModelAndView edit(@ModelAttribute EventTypeVO eventTypeVO, @RequestParam int id) {

		List<EventTypeVO> eventTypeList = this.eventtypeservice.findById(eventTypeVO);

		eventTypeVO = eventTypeList.get(0);

		return new ModelAndView("admin/addEventType", "EventTypeVO", eventTypeVO).addObject("type", "Edit")
				.addObject("button", "Update");
	}
}