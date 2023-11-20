package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserFeedbackDAO;
import com.project.model.ComplainVO;
import com.project.model.FeedbackVO;

@Service
@Transactional
public class UserFeedbackServiceImpl implements UserFeedbackService {

	@Autowired
	private UserFeedbackDAO  userFeedbackDAO;
	@Override
	public void saveFeedback(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
		this.userFeedbackDAO.saveFeedback(feedbackVO);
	}
	@Override
	public List<FeedbackVO> viewFeedback() {
		// TODO Auto-generated method stub
		return this.userFeedbackDAO.viewFeedback();
	}
	@Override
	public List<FeedbackVO> findById(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
		return this.userFeedbackDAO.findById(feedbackVO);
	}
	

}