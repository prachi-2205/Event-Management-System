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


import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.service.UserFeedbackService;
import com.project.utils.BaseMethods;
@Controller
public class FeedbackController {
	
	@Autowired
	private UserFeedbackService userFeedbackService;
	@Autowired
	private LoginService loginService;
	@GetMapping(value="admin/viewFeedback")
	public ModelAndView viewFeedback() 
	{
		List<FeedbackVO> FeedbackList=this.userFeedbackService.viewFeedback();
		return new ModelAndView("admin/viewFeedback","FeedbackList",FeedbackList);
	}
	@GetMapping(value="admin/deleteFeedback")
	public ModelAndView deleteCity(@ModelAttribute FeedbackVO FeedbackVO, @RequestParam int id) 
	{
		List<FeedbackVO> FeedbackList = this.userFeedbackService.findById(FeedbackVO);

		FeedbackVO = FeedbackList.get(0);
		FeedbackVO.setStatus(false);

		this.userFeedbackService.saveFeedback(FeedbackVO);

		return new ModelAndView("redirect:/admin/viewFeedback");
	}

	@GetMapping(value = "user/viewFeedback")
	public ModelAndView viewuserFeedback() {
		
		List<FeedbackVO> FeedbackList=this.userFeedbackService.viewFeedback();
		return new ModelAndView("user/viewFeedback","FeedbackVO",new FeedbackVO()).addObject("FeedbackList",FeedbackList);
	}
	@PostMapping(value = "user/saveFeedback")
	public ModelAndView saveFeedback(@ModelAttribute FeedbackVO FeedbackVO) {
			
		String username = BaseMethods.getUserName();
		LoginVO loginVO = this.loginService.getByUserName(username);
		FeedbackVO.setLoginvo(loginVO);
		String pattern="dd/MM/yyyy";	
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat(pattern);
		String date=simpleDateFormat.format(new Date());
		FeedbackVO.setFeedbackdate(date);
			this.userFeedbackService.saveFeedback(FeedbackVO);
			List<FeedbackVO> FeedbackList=this.userFeedbackService.viewFeedback();
			return new ModelAndView("user/viewFeedback","FeedbackVO",new FeedbackVO()).addObject("FeedbackList",FeedbackList);
	}
}