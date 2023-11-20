package com.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AddonVO;
import com.project.model.CityVO;
import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class ComplaintController {

	@Autowired
	private ComplainService complainService;

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "user/viewComplain")
	public ModelAndView viewComplain(ComplainVO complainVO) {
		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		complainVO.setLoginVO(loginVO);
		List complaintList = this.complainService.findbyLoginId(complainVO);
		return new ModelAndView("user/viewComplain", "complaintList", complaintList).addObject("ComplainVO",
				new ComplainVO());
	}

	@PostMapping(value = "user/saveComplain")
	public ModelAndView saveUserComplain(@ModelAttribute ComplainVO ComplainVO) {
		String username = BaseMethods.getUserName();
		System.out.println(username);
		LoginVO loginVO = this.loginService.getByUserName(username);
		ComplainVO.setLoginVO(loginVO);
		String pattern = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date = simpleDateFormat.format(new Date());
		ComplainVO.setComplaindate(date);
		ComplainVO.setComplainstatus("Pending");
		this.complainService.saveComplain(ComplainVO);
		return new ModelAndView("redirect:/user/viewComplain");
	}

	@GetMapping(value = "admin/viewComplaint")
	public ModelAndView viewComplaint() {

		List<ComplainVO> complainList = this.complainService.getComplain();
		return new ModelAndView("admin/viewComplaint", "complainList", complainList);
	}

	@GetMapping(value = "admin/addComplaintReply1")
	public ModelAndView addComplaintReply1(@ModelAttribute ComplainVO ComplainVO, @RequestParam int id) {

		/* List<ComplainVO> complainList=this.complainService.getComplain(); */
		/* System.out.println(ComplainVO.getComplaindate()); */
		List<ComplainVO> complainList = this.complainService.findById(ComplainVO);

		ComplainVO = complainList.get(0);

		return new ModelAndView("admin/addComplaintReply", "ComplainVO", ComplainVO);

	}

	@PostMapping(value = "admin/saveComplain1")
	public ModelAndView saveComplain(@ModelAttribute ComplainVO ComplainVO) {


		this.complainService.saveComplain(ComplainVO);
		List<ComplainVO> complaintList = this.complainService.findById(ComplainVO);
		
		ComplainVO complainVO2 = complaintList.get(0);
		
		String pattern = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date1 = simpleDateFormat.format(new Date());
		complainVO2.setReplydate(date1);
		complainVO2.setComplainstatus("Resolved");
		
		complainVO2.setComplaindate(complainVO2.getComplaindate());
		complainVO2.setComplaindescrption(complainVO2.getComplaindescrption());
		complainVO2.setComplainsubject(complainVO2.getComplainsubject());
		complainVO2.setLoginVO(complainVO2.getLoginVO());
		complainVO2.setComplainreply(complainVO2.getComplainreply());
		complainVO2.setReplydate(complainVO2.getReplydate());
		
		this.complainService.saveComplain(complainVO2);
		
		
		List<ComplainVO> complainList = this.complainService.getComplain();
		return new ModelAndView("admin/viewComplaint", "complainList", complainList).addObject("Reply", "reslove");
	}

	@GetMapping(value = "admin/deleteComplain")
	public ModelAndView deleteCity(@ModelAttribute ComplainVO ComplainVO, @RequestParam int id) {
		List<ComplainVO> complainList = this.complainService.findById(ComplainVO);

		ComplainVO = complainList.get(0);
		ComplainVO.setStatus(false);

		this.complainService.saveComplain(ComplainVO);

		return new ModelAndView("redirect:/admin/viewComplaint");
	}

}