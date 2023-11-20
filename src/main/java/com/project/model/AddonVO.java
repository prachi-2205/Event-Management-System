package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Controller;

@Entity
@Table(name = "addon_table")
public class AddonVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name="AddonfileName")
	private String fileName;
	

	@Column(name="Addonfilepath")
	private String filePath;
	
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

	@Column(name = "addon_work")
	private String addonwork;

	@Column(name = "addon_price")
	private String addonprice;

	@Column(name = "addon_description")
	private String addondescription;

	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getAddonwork() {
		return addonwork;
	}

	public void setAddonwork(String addonwork) {
		this.addonwork = addonwork;
	}

	public String getAddonprice() {
		return addonprice;
	}

	public void setAddonprice(String addonprice) {
		this.addonprice = addonprice;
	}

	public String getAddondescription() {
		return addondescription;
	}

	public void setAddondescription(String addondescription) {
		this.addondescription = addondescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
