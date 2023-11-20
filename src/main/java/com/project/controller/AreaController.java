package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.service.AreaService;
import com.project.service.CityService;

@Controller
public class AreaController {
	@Autowired
	private AreaService areaservice;
	
	@Autowired
	private CityService cityservice;
	
	@GetMapping(value="admin/addArea")
	public ModelAndView addArea() 
	{
			List<CityVO> cityList=this.cityservice.GetCity();
			return new ModelAndView("admin/addArea","AreaVO",new AreaVO()).addObject("cityList",cityList).addObject("add","Add").addObject("save","Save");
	}
	@GetMapping(value="admin/viewArea")
	public ModelAndView viewArea() 
	{
		List<AreaVO> areaList=this.areaservice.getArea();
		return new ModelAndView("admin/viewArea","areaList",areaList);
	}
	@PostMapping(value="admin/saveArea")
	public ModelAndView saveArea(@ModelAttribute AreaVO areaVO) 
	{
		
		this.areaservice.saveArea(areaVO);
		return new ModelAndView("redirect:/admin/viewArea");
	}
	@GetMapping(value="admin/deleteArea")
	public ModelAndView deleteEvent(@ModelAttribute AreaVO areaVO, @RequestParam int id) 
	{
		List<AreaVO> areaList = this.areaservice.findById(areaVO);

		areaVO = areaList.get(0);
		areaVO.setStatus(false);

		this.areaservice.saveArea(areaVO);

		return new ModelAndView("redirect:/admin/viewArea");
	}
	@GetMapping(value = "admin/editArea")
	public ModelAndView edit(@ModelAttribute  AreaVO areaVO, @RequestParam int id) {

		List<CityVO> cityList=this.cityservice.GetCity();
		List<AreaVO> areaList = this.areaservice.findById(areaVO);
		
		areaVO = areaList.get(0);

		return new ModelAndView("admin/addArea", "AreaVO", areaVO).addObject("cityList",cityList).addObject("add","Edit").addObject("save","Update");
	}
}
