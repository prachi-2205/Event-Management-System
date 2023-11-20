package com.project.controller;

import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.BookingDetailsVO;
import com.project.model.BookingVO;
import com.project.model.CatalogFileVO;
import com.project.model.AddonVO;
import com.project.model.EventVO;
import com.project.model.LoginVO;
import com.project.model.UserCustomEventRequirmentVO;
import com.project.service.BookingDetailsService;
import com.project.service.BookingService;
import com.project.service.CatalogService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class BookingController {

	@Autowired
	private LoginService loginService;

	@Autowired
	private BookingDetailsService bookingDetailsService;

	@Autowired
	private BookingService bookingService;

	@Autowired
	private CatalogService catalogService;

	@Autowired
	private BaseMethods baseMethods;

	@GetMapping(value = "admin/viewBooking")
	public ModelAndView index() {

		List<BookingVO> bookingList = this.bookingService.getBookingData();
		List<CatalogFileVO> catalogFileList = this.catalogService.getCatalogFile();
		return new ModelAndView("admin/viewBooking", "bookingList", bookingList).addObject("catalogFileList",
				catalogFileList);
	}

	@GetMapping(value = "admin/finalbooking")
	public ModelAndView finalBooking(@ModelAttribute BookingVO bookingVO, @RequestParam int id) {
		List<BookingVO> bookingList = this.bookingService.findById(id);
		BookingVO bookingVO2 = bookingList.get(0);
		bookingVO2.setId(id);
		bookingVO2.setBookingStatus("confirm");
		this.bookingService.saveBooking(bookingVO2);

		this.baseMethods.sendMail("Response of your event :" + bookingVO2.getEventVO().getEventTypeVO().getEventtype(),
				"Your event has been accepted by out team. They will contact you for further process.",
				bookingVO2.getEmailAddress());

		this.baseMethods.sendMail("Response of your event :" + bookingVO2.getEventVO().getEventTypeVO().getEventtype(),
				"Your event has been accepted by out team. They will contact you for further process.",
				bookingVO2.getLoginVo().getUsername());

		return new ModelAndView("redirect:/admin/viewBooking");
	}

	@GetMapping(value = "admin/cancelbooking")
	public ModelAndView camcelBooking(@ModelAttribute BookingVO bookingVO, @RequestParam int id) {

		System.out.println("id::::::::::::::::::::" + id);
		List<BookingVO> bookingList = this.bookingService.findById(id);
		BookingVO bookingVO2 = bookingList.get(0);
		System.out.println("size:::::" + bookingList.size());
		bookingVO2.setId(id);
		bookingVO2.setBookingStatus("cancel");
		System.out.println(bookingVO2.getBookingStatus());
		this.bookingService.saveBooking(bookingVO2);

		this.baseMethods.sendMail("Response of your event :" + bookingVO2.getEventVO().getEventTypeVO().getEventtype(),
				"Your event has been rejected by out team.", bookingVO2.getEmailAddress());

		this.baseMethods.sendMail("Response of your event :" + bookingVO2.getEventVO().getEventTypeVO().getEventtype(),
				"Your event has been rejected by out team.", bookingVO2.getLoginVo().getUsername());

		return new ModelAndView("redirect:/admin/viewBooking");
	}

	@GetMapping(value = "user/booking")
	public ModelAndView booking() {

		List<BookingDetailsVO> addonList = this.bookingDetailsService.getAddonBooking();

		return new ModelAndView("user/booking", "addonList", addonList);

	}

	@GetMapping(value = "user/viewUserBooking")
	public ModelAndView viewUserBooking(@ModelAttribute BookingVO bookingVO) {

		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		bookingVO.setLoginVo(loginVO);

		List bookingList = this.bookingService.findbyLoginId(bookingVO);
		List CatalogFileList = this.catalogService.getCatalogFile();
		return new ModelAndView("user/viewuserBooking", "bookingList", bookingList).addObject("CatalogFileList",
				CatalogFileList);
	}

	@PostMapping(value = "user/saveBookingDetails")
	public ModelAndView saveEventDetails(@ModelAttribute BookingVO bookingVO) {

		bookingVO.setBookingStatus("Pending");
		this.bookingService.saveBooking(bookingVO);
		return new ModelAndView("redirect:/user/viewUserBooking");
	}

}
