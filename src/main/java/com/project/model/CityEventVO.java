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
@Table(name = "cityevent_table")
public class CityEventVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "CityEventfileName")
	private String fileName;

	@Column(name = "Cityeventfilepath")
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

	@ManyToOne
	@JoinColumn
	private AreaVO areaVO;

	@ManyToOne
	@JoinColumn
	private CityVO cityVO;

	@Column(name = "event_Type")
	private String eventType;

	public AreaVO getAreaVO() {
		return areaVO;
	}

	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}

	@Column(name = "cityevent_date")
	private String cityeventDate;

	@Column(name = "cityevent_time")
	private String cityeventtime;

	@Column(name = "cityevent_fromday")
	private String cityeventfromday;

	@Column(name = "cityevent_today")
	private String cityeventtoday;

	@Column(name = "cityEvent_description")
	private String cityEventdescription;

	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventType() {
		return eventType;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public String getCityeventDate() {
		return cityeventDate;
	}

	public void setCityeventDate(String cityeventDate) {
		this.cityeventDate = cityeventDate;
	}

	public String getCityeventtime() {
		return cityeventtime;
	}

	public void setCityeventtime(String cityeventtime) {
		this.cityeventtime = cityeventtime;
	}

	public String getCityeventfromday() {
		return cityeventfromday;
	}

	public void setCityeventfromday(String cityeventfromday) {
		this.cityeventfromday = cityeventfromday;
	}

	public String getCityeventtoday() {
		return cityeventtoday;
	}

	public void setCityeventtoday(String cityeventtoday) {
		this.cityeventtoday = cityeventtoday;
	}

	public String getCityEventdescription() {
		return cityEventdescription;
	}

	public void setCityEventdescription(String cityEventdescription) {
		this.cityEventdescription = cityEventdescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public CityVO getCityVO() {
		return cityVO;
	}

	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}

}