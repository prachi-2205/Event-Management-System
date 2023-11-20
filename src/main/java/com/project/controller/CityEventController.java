package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.model.CityEventVO;
import com.project.model.CityVO;
import com.project.service.AreaService;
import com.project.service.CityEventService;
import com.project.service.CityService;

@Controller
public class CityEventController {

	@Autowired
	private CityEventService cityEventService;

	@Autowired
	private AreaService areaService;


	@Autowired
	private CityService cityService;
	
	@GetMapping(value = "user/staticEvent")
	public ModelAndView userStaticEvent(@ModelAttribute CityEventVO cityEventVO, @RequestParam int id) {

		List<CityEventVO> cityEventList = this.cityEventService.findById(cityEventVO);
		return new ModelAndView("user/staticEvent", "cityEventList", cityEventList);

	}

	@GetMapping(value = "user/viewCityEvent")
	public ModelAndView userviewCityEvent() {
		List<CityEventVO> cityEventList = this.cityEventService.getCityEventList();
		return new ModelAndView("user/viewCityEvent", "cityEventList", cityEventList);
	}

	@GetMapping(value = "admin/addCityEvent")
	public ModelAndView addCity() {
		List<CityVO> areaList = this.cityService.GetCity();
		return new ModelAndView("admin/addCityEvent", "CityEventVO", new CityEventVO()).addObject("type", "Add")
				.addObject("button", "Save").addObject("cityList", areaList);
	}

	@GetMapping(value = "admin/viewCityDetails")
	public ResponseEntity addCity(@RequestParam int id, CityVO cityVO, AreaVO areaVO) {
		cityVO.setId(id);
		areaVO.setCityVO(cityVO);

		List<AreaVO> areaList1 = this.areaService.findById1(areaVO);
		return new ResponseEntity(areaList1, HttpStatus.OK);
	}

	@GetMapping(value = "admin/viewCityEvent")
	public ModelAndView viewCity() {
		List<CityEventVO> cityEventList = this.cityEventService.getCityEventList();
		return new ModelAndView("admin/viewCityEvent", "cityEventList", cityEventList);
	}

	@PostMapping(value = "admin/saveCityEvent")
	public ModelAndView saveCityEvent(@ModelAttribute CityEventVO CityEventVO, HttpServletRequest request,
			@RequestParam MultipartFile file) {

		this.cityEventService.saveCityEvent(CityEventVO);

		if (CityEventVO.getId() > 0) {
			List<CityEventVO> cityEventList = this.cityEventService.findById(CityEventVO);
			CityEventVO cityEventVO2 = cityEventList.get(0);

			String path = request.getSession().getServletContext().getRealPath("/");
			String filePath = path + "documents\\cityEvent\\";

			File f = new File(filePath + cityEventVO2.getFileName());
			f.delete();

		}
		String path = request.getSession().getServletContext().getRealPath("/");

		String fileName = file.getOriginalFilename();

		String filePath = path + "documents\\cityEvent\\";

		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		CityEventVO.setFileName(fileName);
		CityEventVO.setFilePath(filePath);

		this.cityEventService.saveCityEvent(CityEventVO);

		return new ModelAndView("redirect:/admin/viewCityEvent");
	}

	@GetMapping(value = "admin/deleteCityEvent")
	public ModelAndView deleteCity(@ModelAttribute CityEventVO CityEventVO, @RequestParam int id) {
		List<CityEventVO> cityEventList = this.cityEventService.findById(CityEventVO);

		CityEventVO = cityEventList.get(0);
		CityEventVO.setStatus(false);

		this.cityEventService.saveCityEvent(CityEventVO);

		return new ModelAndView("redirect:/admin/viewCityEvent");
	}

	@GetMapping(value = "admin/editCityEvent")
	public ModelAndView edit(@ModelAttribute CityEventVO CityEventVO, @RequestParam int id) {

		List<CityEventVO> cityEventList = this.cityEventService.findById(CityEventVO);

		CityEventVO = cityEventList.get(0);
		List<AreaVO> areaList = this.areaService.getArea();
		return new ModelAndView("admin/addCityEvent", "CityEventVO", CityEventVO).addObject("type", "Edit")
				.addObject("button", "Update").addObject("areaList", areaList);
	}
}