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
@Table(name="complain_table")
public class ComplainVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="complain_subject")
	private String complainsubject;
	
	@Column(name="complain_descrption")
	private String complaindescrption;

	@Column(name="complain_reply")
	private String complainreply;
	
	@Column(name="complain_date")
	private String complaindate;
	
	@Column(name="reply_date")
	private String replydate;
	
	@Column(name="complain_status")
	private String complainstatus;
	
	@ManyToOne
	@JoinColumn
	private  LoginVO loginVO;
	

	@Column(name="status")
	private boolean status=true;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getComplainsubject() {
		return complainsubject;
	}


	public void setComplainsubject(String complainsubject) {
		this.complainsubject = complainsubject;
	}


	public String getComplaindescrption() {
		return complaindescrption;
	}


	public void setComplaindescrption(String complaindescrption) {
		this.complaindescrption = complaindescrption;
	}


	public String getComplainreply() {
		return complainreply;
	}


	public void setComplainreply(String complainreply) {
		this.complainreply = complainreply;
	}


	public String getComplaindate() {
		return complaindate;
	}


	public void setComplaindate(String complaindate) {
		this.complaindate = complaindate;
	}


	public String getReplydate() {
		return replydate;
	}


	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}


	public String getComplainstatus() {
		return complainstatus;
	}


	public void setComplainstatus(String complainstatus) {
		this.complainstatus = complainstatus;
	}


	public LoginVO getLoginVO() {
		return loginVO;
	}


	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}


	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}
	
}