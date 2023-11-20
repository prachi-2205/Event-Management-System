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

import com.project.model.BookingVO;
import com.project.model.ComplainVO;
import com.project.model.EventTypeVO;
import com.project.model.LoginVO;
import com.project.model.UserCustomEventDecorationVO;
import com.project.model.UserCustomEventPlaceFileVO;
import com.project.model.UserCustomEventRequirmentVO;
import com.project.service.EventTypeService;
import com.project.service.LoginService;
import com.project.service.UserCustomReqService;
import com.project.utils.BaseMethods;

@Controller
public class UserCustomReqController {

	@Autowired
	private UserCustomReqService userCustomReqService;

	@Autowired
	private EventTypeService eventtypeService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private BaseMethods baseMethods;

	@GetMapping(value = "admin/showPhotos")
	public ResponseEntity showPhotos(@RequestParam int id, @RequestParam String type) {
		List data = this.userCustomReqService.findBydecorationId(id, type);
		return new ResponseEntity(data, HttpStatus.OK);
	}

	@GetMapping(value = "admin/viewCustomReq")
	public ModelAndView viewCustomReq() {

		List<UserCustomEventRequirmentVO> customiseList = this.userCustomReqService.getcustomiseList();
		/*
		 * List<UserCustomEventDecorationVO> decorationList =
		 * this.userCustomReqService.getDecorationList();
		 * List<UserCustomEventPlaceFilenVO> placeList =
		 * this.userCustomReqService.getplaceList();
		 */
		return new ModelAndView("admin/viewCustomReq", "customiseList", customiseList);

	}

	
	
	
	@GetMapping(value = "user/viewCustomReq1")
	public ModelAndView userviewCustomReq() {
		List<EventTypeVO> eventTypeList = this.eventtypeService.GetEventType();
		return new ModelAndView("user/viewUserCustomRequirment", "userCustomEventRequirmentVO",
				new UserCustomEventRequirmentVO()).addObject("eventTypeList", eventTypeList);

	}
	
	@GetMapping(value = "user/customiseBookingList1")
	public ModelAndView customiseBookingList(@ModelAttribute UserCustomEventRequirmentVO userCustomEventRequirmentVO ) {
		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		 
		System.out.println(loginVO);
		
		userCustomEventRequirmentVO.setLoginVO(loginVO);
		
		List bookingList = this.userCustomReqService.findbyLoginId(userCustomEventRequirmentVO);
		
		return new ModelAndView("user/customiseBooking", "bookingList", bookingList);

	}
	
	@GetMapping(value = "admin/cancelCustomisebooking")
	public ModelAndView camcelBooking(@ModelAttribute UserCustomEventRequirmentVO userCustomEventRequirmentVO , @RequestParam int id) {

		System.out.println("id::::::::::::::::::::" + id);
		List<UserCustomEventRequirmentVO> bookingList = this.userCustomReqService.findBYId(id);
		UserCustomEventRequirmentVO userCustomEventRequirmentVO2 = bookingList.get(0);
		System.out.println("size:::::" + bookingList.size());
		userCustomEventRequirmentVO2.setId(id);
		userCustomEventRequirmentVO2.setStatus("cancel");
		System.out.println(userCustomEventRequirmentVO2.getStatus());
		this.userCustomReqService.saveCustomerReq(userCustomEventRequirmentVO2);

		

		this.baseMethods.sendMail("Response of your event :" + userCustomEventRequirmentVO2.getEventTypeVO().getEventtype(),
				"Your event has been rejected by out team.", userCustomEventRequirmentVO2.getLoginVO().getUsername());

		return new ModelAndView("redirect:/admin/viewBooking");
	}
	
	
	@GetMapping(value = "admin/sendmail1")
	public ModelAndView reply1(@ModelAttribute UserCustomEventRequirmentVO userCustomEventRequirmentVO, @RequestParam int id) {

		/*List<UserCustomEventRequirmentVO> customiseList = this.userCustomReqService.getcustomiseList();
		
		*/
		List<UserCustomEventRequirmentVO> customiseList = this.userCustomReqService.findBYId(id);

		userCustomEventRequirmentVO = customiseList.get(0);

		List<EventTypeVO> eventTypeList = this.eventtypeService.GetEventType();
		return new ModelAndView("admin/addReply","userCustomEventRequirmentVO",userCustomEventRequirmentVO).addObject("eventTypeList",eventTypeList);	

	}
	
	
	@PostMapping(value = "admin/changevalue")
	public ModelAndView changevalue(@ModelAttribute UserCustomEventRequirmentVO userCustomEventRequirmentVO
			 ) {

		this.userCustomReqService.saveCustomerReq(userCustomEventRequirmentVO);
		
		
	/*	System.out.println("id::::::::::::::::::::" + id);*/
		List<UserCustomEventRequirmentVO> customEventRequirmentList = this.userCustomReqService.findById(userCustomEventRequirmentVO);
		UserCustomEventRequirmentVO userCustomEventRequirmentVO2 = customEventRequirmentList.get(0);
		System.out.println("size:::::" + customEventRequirmentList.size());
	/*	userCustomEventRequirmentVO2.setId(id);*/
		userCustomEventRequirmentVO2.setStatus("confirm");
		userCustomEventRequirmentVO2.setAddress(userCustomEventRequirmentVO2.getAddress());
	/*	userCustomEventRequirmentVO2.setLoginVO();*/
		userCustomEventRequirmentVO2.setMeal(userCustomEventRequirmentVO2.getMeal());
		userCustomEventRequirmentVO2.setPerson(userCustomEventRequirmentVO2.getPerson());
		userCustomEventRequirmentVO2.setEventTypeVO(userCustomEventRequirmentVO2.getEventTypeVO());

		this.baseMethods.sendMail("Regarding " + userCustomEventRequirmentVO2.getEventTypeVO().getEventtype() + " Event",
				"Hello , " + userCustomEventRequirmentVO2.getLoginVO().getUsername()
						+ "<br><br> Your event is approved by Administration team, They will contact you on your personal number.",
				userCustomEventRequirmentVO2.getLoginVO().getUsername());

		this.userCustomReqService.saveCustomerReq(userCustomEventRequirmentVO2);

		return new ModelAndView("redirect:/admin/viewCustomReq");

	}

	@PostMapping(value = "user/saveCustomerRequirment")
	public ModelAndView saveCustomerRequirment(@ModelAttribute UserCustomEventRequirmentVO userCustomEventRequirmentVO,
			@RequestParam("file") List<MultipartFile> file, HttpServletRequest request,
			@RequestParam(required = false) String isRemoveAll, @RequestParam("file1") List<MultipartFile> file1,
			@RequestParam String meal1) {

		userCustomEventRequirmentVO.setStatus("Pending");

		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		userCustomEventRequirmentVO.setLoginVO(loginVO);

		String meals = new String();
		String[] meal = request.getParameterValues("meal1");

		for (int i = 0; i < meal.length; i++) {
			meals = meals + meal[i] + ",";
			userCustomEventRequirmentVO.setMeal(meals);
		}

		this.userCustomReqService.saveCustomerReq(userCustomEventRequirmentVO);

		if (isRemoveAll != null && !isRemoveAll.isEmpty() && isRemoveAll.equalsIgnoreCase("true")) {

			if (userCustomEventRequirmentVO.getId() > 0) {

				List<UserCustomEventDecorationVO> decorationFileList = this.userCustomReqService
						.findByCatId(userCustomEventRequirmentVO.getId());

				System.out.println(decorationFileList.size());

				for (UserCustomEventDecorationVO decorationFileVO : decorationFileList) {

					String path = request.getSession().getServletContext().getRealPath("/");
					String filePath = path + "documents\\decoration\\" + decorationFileVO.getFileName();

					File f = new File(filePath);
					f.delete();

					System.err.println("delete");

					this.userCustomReqService.deleteCatalogFile(decorationFileVO);
				}

			}

		}

		if (file != null && !file.isEmpty() && file.size() > 0) {

			for (MultipartFile multipartFile : file) {

				if (multipartFile.getSize() > 0) {

					String path = request.getSession().getServletContext().getRealPath("/");

					String fileName = multipartFile.getOriginalFilename();

					String filePath = path + "documents\\decoration\\";

					try {
						byte barr[] = multipartFile.getBytes();

						BufferedOutputStream bout = new BufferedOutputStream(
								new FileOutputStream(filePath + "/" + fileName));

						bout.write(barr);
						bout.flush();
						bout.close();

					} catch (Exception e) {
						e.printStackTrace();
					}

					UserCustomEventDecorationVO decorationFileVO = new UserCustomEventDecorationVO();
					decorationFileVO.setFileName(fileName);
					decorationFileVO.setFilePath(filePath);
					decorationFileVO.setUserCustomEventRequirmentVO(userCustomEventRequirmentVO);

					this.userCustomReqService.savedecorationFile(decorationFileVO);
				}

			}
		}

		if (file1 != null && !file1.isEmpty() && file1.size() > 0) {

			for (MultipartFile multipartFile : file1) {

				if (multipartFile.getSize() > 0) {

					String path = request.getSession().getServletContext().getRealPath("/");

					String fileName = multipartFile.getOriginalFilename();

					String filePath = path + "documents\\place\\";

					try {
						byte barr[] = multipartFile.getBytes();

						BufferedOutputStream bout = new BufferedOutputStream(
								new FileOutputStream(filePath + "/" + fileName));

						bout.write(barr);
						bout.flush();
						bout.close();

					} catch (Exception e) {
						e.printStackTrace();
					}

					UserCustomEventPlaceFileVO placeFileVO = new UserCustomEventPlaceFileVO();
					placeFileVO.setFileName(fileName);
					placeFileVO.setFilePath(filePath);
					placeFileVO.setUserCustomEventRequirmentVO(userCustomEventRequirmentVO);

					this.userCustomReqService.savePlaceFile(placeFileVO);
				}

			}
		}

		return new ModelAndView("redirect:/user/customiseBookingList1");
	}

}