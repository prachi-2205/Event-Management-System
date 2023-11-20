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
@Table(name = "User_Custom_Event_Place_tbl")
public class UserCustomEventPlaceFileVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
	@Column(name = "file_name")
	private String fileName;

	@Column(name = "file_path")
	private String filePath;

	@ManyToOne
	@JoinColumn
	private UserCustomEventRequirmentVO userCustomEventRequirmentVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public UserCustomEventRequirmentVO getUserCustomEventRequirmentVO() {
		return userCustomEventRequirmentVO;
	}

	public void setUserCustomEventRequirmentVO(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		this.userCustomEventRequirmentVO = userCustomEventRequirmentVO;
	}




	

		
}
