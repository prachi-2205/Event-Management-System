package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="eventtype_table")

public class EventTypeVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
	@Column(name = "event_type")
	private String eventtype;
	
	@Column(name = "event_type_description")
	private String eventtypedescription;
	
	@Column(name = "status")
	private boolean status = true;
	
	@Column(name="eventfileName")
	private String fileName;
	

	@Column(name="eventfilePath")
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventtype() {
		return eventtype;
	}

	public void setEventtype(String eventtype) {
		this.eventtype = eventtype;
	}

	public String getEventtypedescription() {
		return eventtypedescription;
	}

	public void setEventtypedescription(String eventtypedescription) {
		this.eventtypedescription = eventtypedescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
