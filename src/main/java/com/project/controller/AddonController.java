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
import com.project.service.AddonService;

@Controller
public class AddonController {
	@Autowired
	private AddonService addonservice;

	@GetMapping(value = "user/addon")
	public ModelAndView userViewaAddon() {
		List<AddonVO> addonList = this.addonservice.GetAddon();
		return new ModelAndView("user/viewAddon","addonList",addonList);
		
	}
	
	@GetMapping(value = "admin/addAddon")
	public ModelAndView addAddon() {

		return new ModelAndView("admin/addAddon", "AddonVO", new AddonVO()).addObject("add","Add").addObject("save","Save");
	}

	@GetMapping(value = "admin/viewAddon")
	public ModelAndView viewAddon() {
		List<AddonVO> addonList = this.addonservice.GetAddon();
		return new ModelAndView("admin/viewAddon", "addonList", addonList);
	}

	@PostMapping(value = "admin/saveAddon")
	public ModelAndView saveAddon(@ModelAttribute AddonVO AddonVO,HttpServletRequest request,@RequestParam MultipartFile file) {
		this.addonservice.saveAddon(AddonVO);
		
		if (AddonVO.getId()> 0) {
			List<AddonVO> addonList = this.addonservice.findById(AddonVO);
			AddonVO addonVO2 = addonList.get(0);

			String path = request.getSession().getServletContext().getRealPath("/");
			String filePath = path + "documents\\addon\\";

			File f = new File(filePath + addonVO2.getFileName());
			f.delete();

		}
		String path = request.getSession().getServletContext().getRealPath("/");

		String fileName = file.getOriginalFilename();

		String filePath = path + "documents\\addon\\";

		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		AddonVO.setFileName(fileName);
		AddonVO.setFilePath(filePath);
		
		

		
		this.addonservice.saveAddon(AddonVO);
		
		return new ModelAndView("redirect:/admin/viewAddon");
	}

	@GetMapping(value = "admin/deleteAddon")
	public ModelAndView deleteAddon(@ModelAttribute AddonVO AddonVO, @RequestParam int id) {

		List<AddonVO> addonList = this.addonservice.findById(AddonVO);

		AddonVO = addonList.get(0);
		AddonVO.setStatus(false);
		this.addonservice.saveAddon(AddonVO);
		return new ModelAndView("redirect:/admin/viewAddon");
	}

	@GetMapping(value = "admin/editAddon")
	public ModelAndView editAddon(@ModelAttribute AddonVO AddonVO, @RequestParam int id) {

		List<AddonVO> addonList = this.addonservice.findById(AddonVO);
		AddonVO = addonList.get(0);
		return new ModelAndView("admin/addAddon", "AddonVO", AddonVO).addObject("add","Edit").addObject("save","Update");
	}

}
