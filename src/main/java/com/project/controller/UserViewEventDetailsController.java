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
import com.project.model.AddonVO;
import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;
import com.project.model.EventTypeVO;
import com.project.model.EventVO;
import com.project.model.LoginVO;
import com.project.service.AddonService;
import com.project.service.BookingDetailsService;
import com.project.service.BookingService;
import com.project.service.CatalogService;
import com.project.service.EventService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class UserViewEventDetailsController {

	@Autowired
	private EventService eventService;

	@Autowired
	private AddonService addonService;

	@Autowired
	private CatalogService catalogService;

	@Autowired
	private BookingDetailsService bookingDetailsService;

	@Autowired
	private BookingService bookingService;

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "user/viewEventDetails")
	public ModelAndView viewEventDetails(@ModelAttribute EventTypeVO eventTypeVO, @RequestParam int id) {
		List<EventVO> eventVOList = this.eventService.findByEventTypeId(id);
		List<AddonVO> addonList = this.addonService.GetAddon();
		List<CatalogVO> catalogList = this.catalogService.findByCatalogId(id);
		List<CatalogFileVO> catalogFileList = this.catalogService.getCatalogFile();
		return new ModelAndView("user/viewEventDetails", "eventTypeList", eventVOList).addObject("addonList", addonList)
				.addObject("catalogList", catalogList).addObject("catalogFileList", catalogFileList);
	}

	@PostMapping(value = "user/saveEventBooking")
	public ModelAndView saveEventDetails(@ModelAttribute BookingVO bookingVO, @RequestParam int eventId,
			@RequestParam(required = false) String[] addonsList, HttpServletRequest request,
			@RequestParam String eventFinalPrice, @RequestParam String type, @RequestParam String catalogFinalPrice,@RequestParam String dbGrandTotal,
			@RequestParam int catalogId) {
		System.out.println(dbGrandTotal);
		System.out.println(catalogFinalPrice);
		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		bookingVO.setLoginVo(loginVO);
		String pattern = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date = simpleDateFormat.format(new Date());
		bookingVO.setCurrentDate(date);

		CatalogVO catalogVO = new CatalogVO();

		catalogVO.setId(catalogId);

		EventVO eventVO = new EventVO();

		eventVO.setId(eventId);
		bookingVO.setCatalogVO(catalogVO);
		bookingVO.setEventVO(eventVO);
		bookingVO.setEventPrice(eventFinalPrice);
		bookingVO.setEventMeal(type);
		bookingVO.setCatalogPrice(catalogFinalPrice);
		bookingVO.setTotalPrice(dbGrandTotal);
		this.bookingService.saveBooking(bookingVO);
		List<BookingDetailsVO> bookingList = new ArrayList<BookingDetailsVO>();

		if (addonsList != null) {
			for (String str : addonsList) {

				String data[] = str.trim().split("-");

				int addonId = Integer.parseInt(data[0]);
				int qty = Integer.parseInt(data[1]);
				BookingDetailsVO addonBookingVO = new BookingDetailsVO();

				addonBookingVO.setAddonQuantity(qty);
				AddonVO addonVO = new AddonVO();
				addonVO.setId(addonId);

				addonBookingVO.setAddonvo(addonVO);

				addonBookingVO.setBookingVO(bookingVO);

				this.bookingDetailsService.saveEventDetails(addonBookingVO);
				bookingList = this.bookingDetailsService.findById(bookingVO.getId());

			}

		}

		List<BookingVO> bookingList1 = this.bookingService.getBookingData();
		System.out.println(bookingList1);
		List<CatalogFileVO> catalogFileList = this.catalogService.findByCatId(catalogId);
		return new ModelAndView("user/booking", "bookingList", bookingList).addObject("bookingVO", bookingVO)
				.addObject("bookingList1", bookingList1).addObject("catalogFileList", catalogFileList);
	}
}
