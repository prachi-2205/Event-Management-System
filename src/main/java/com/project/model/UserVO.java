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
@Table(name = "registration")
public class UserVO {

	@Id
	@Column(name="regId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name="user_full_name")
	private String userfullname;

	@Column(name="user_phonenumber")
	private String userphonenumber;
	
	@Column(name="user_address")
	private String useraddress;
	
	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginvo;

	@Column(name = "status")
	private boolean status = true;
	

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

	public String getUserfullname() {
		return userfullname;
	}

	public void setUserfullname(String userfullname) {
		this.userfullname = userfullname;
	}

	public String getUserphonenumber() {
		return userphonenumber;
	}

	public void setUserphonenumber(String userphonenumber) {
		this.userphonenumber = userphonenumber;
	}

	

	

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public LoginVO getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}

}

