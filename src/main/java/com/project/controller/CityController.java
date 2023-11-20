package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.*;

import com.project.service.CityService;

@Controller
public class CityController {

	@Autowired
	private CityService cityservice;

	@GetMapping(value = "admin/addCity")
	public ModelAndView addCity() {
		return new ModelAndView("admin/addCity", "CityVO", new CityVO()).addObject("add","Add").addObject("save","Save");
	}

	@GetMapping(value = "admin/viewCity")
	public ModelAndView viewCity() {
		List<CityVO> cityList = this.cityservice.GetCity();
		return new ModelAndView("admin/viewCity", "cityList", cityList);
	}

	@PostMapping(value = "admin/saveCity")
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO) {

		this.cityservice.saveCity(cityVO);
		return new ModelAndView("redirect:/admin/viewCity");
	}

	@GetMapping(value = "admin/deleteCity")
	public ModelAndView deleteCity(@ModelAttribute CityVO CityVO, @RequestParam int id) {

		List<CityVO> cityList = this.cityservice.findById(CityVO);

		CityVO = cityList.get(0);
		CityVO.setStatus(false);
		this.cityservice.saveCity(CityVO);
		return new ModelAndView("redirect:/admin/viewCity");
	}

	@GetMapping(value = "editCity")
	public ModelAndView editCity(@ModelAttribute CityVO CityVO,@RequestParam int id) {

		List<CityVO> cityList = this.cityservice.findById(CityVO);
		CityVO = cityList.get(0);
		return new ModelAndView("admin/addCity", "CityVO", CityVO).addObject("add","Edit").addObject("save","Update");
	}

}
