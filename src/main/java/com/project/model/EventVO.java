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
@Table(name = "event_table")
public class EventVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@ManyToOne
	@JoinColumn
	private EventTypeVO eventTypeVO;

	@Column(name = "event__person")
	private String eventperson;

	@Column(name = "withMealprice")
	private String withMealPrice;
	
	public String getWithMealPrice() {
		return withMealPrice;
	}

	public void setWithMealPrice(String withMealPrice) {
		this.withMealPrice = withMealPrice;
	}

	@Column(name = "withoutMealprice")
	private String withoutMealPrice;

	@Column(name = "event_descrption")
	private String eventdescrption;

	

	@Column(name = "status")
	private boolean status = true;

	public String getEventdescrption() {
		return eventdescrption;
	}

	public void setEventdescrption(String eventdescrption) {
		this.eventdescrption = eventdescrption;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public EventTypeVO getEventTypeVO() {
		return eventTypeVO;
	}

	public void setEventTypeVO(EventTypeVO eventTypeVO) {
		this.eventTypeVO = eventTypeVO;
	}

	public String getEventperson() {
		return eventperson;
	}

	public void setEventperson(String eventperson) {
		this.eventperson = eventperson;
	}

	

	


	

	public String getWithoutMealPrice() {
		return withoutMealPrice;
	}

	public void setWithoutMealPrice(String withoutMealPrice) {
		this.withoutMealPrice = withoutMealPrice;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	

}