package com.project.service;

import java.util.List;

import com.project.model.ComplainVO;
import com.project.model.FeedbackVO;

public interface UserFeedbackService {

	void saveFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> viewFeedback();

	List<com.project.model.FeedbackVO> findById(FeedbackVO feedbackVO);

}