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
@Table(name = "booking_table")
public class BookingVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "currentDate")
	private String currentDate;

	@Column(name = "totalPrice")
	private String totalPrice;
	
	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	@ManyToOne
	@JoinColumn
	private EventVO eventVO;

	@ManyToOne
	@JoinColumn
	private CatalogVO catalogVO;

	@Column(name = "eventPrice")
	private String eventPrice;

	@Column(name = "catalogPrice")
	private String catalogPrice;

	@Column(name = "bookingStatus")
	private String bookingStatus;

	@Column(name = "Meal")
	private String eventMeal;

	@Column(name = "FirstName")
	private String firstName;

	@Column(name = "LastName")
	private String lastName;

	@Column(name = "Ph_no")
	private String phonerNo;

	@Column(name = "EmailAddress")
	private String emailAddress;

	@Column(name = "EventVenue")
	private String eventVenue;

	@Column(name = "EventDate")
	private String eventDate;

	@Column(name = "EventTime")
	private String eventTime;

	@ManyToOne
	@JoinColumn
	private LoginVO loginVo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}

	public EventVO getEventVO() {
		return eventVO;
	}

	public void setEventVO(EventVO eventVO) {
		this.eventVO = eventVO;
	}

	public CatalogVO getCatalogVO() {
		return catalogVO;
	}

	public void setCatalogVO(CatalogVO catalogVO) {
		this.catalogVO = catalogVO;
	}

	public String getEventPrice() {
		return eventPrice;
	}

	public void setEventPrice(String eventPrice) {
		this.eventPrice = eventPrice;
	}

	public String getCatalogPrice() {
		return catalogPrice;
	}

	public void setCatalogPrice(String catalogPrice) {
		this.catalogPrice = catalogPrice;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}

	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

	public String getEventMeal() {
		return eventMeal;
	}

	public void setEventMeal(String eventMeal) {
		this.eventMeal = eventMeal;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhonerNo() {
		return phonerNo;
	}

	public void setPhonerNo(String phonerNo) {
		this.phonerNo = phonerNo;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getEventVenue() {
		return eventVenue;
	}

	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventTime() {
		return eventTime;
	}

	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}

	public LoginVO getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVO loginVo) {
		this.loginVo = loginVo;
	}

}
