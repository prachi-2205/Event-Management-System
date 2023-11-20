package com.project.dao;

import java.util.List;

import com.project.model.FeedbackVO;

public interface UserFeedbackDAO {

	void saveFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> viewFeedback();

	List<FeedbackVO> findById(FeedbackVO feedbackVO);

}