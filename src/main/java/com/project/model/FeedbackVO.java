package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback_table")
public class FeedbackVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="User_Feedback")
	private String feedback;
	
	@Column(name = "status")
	private boolean status = true;
	
	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginvo;
	
	public LoginVO getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}

	@Column(name="feedback_date")
	private String feedbackdate;
	

	@Column(name="feedback_rating")
	private String feedback_rating;
	
	public String getFeedbackdate() {
		return feedbackdate;
	}

	public void setFeedbackdate(String feedbackdate) {
		this.feedbackdate = feedbackdate;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getFeedback_rating() {
		return feedback_rating;
	}

	public void setFeedback_rating(String feedback_rating) {
		this.feedback_rating = feedback_rating;
	}


	
}