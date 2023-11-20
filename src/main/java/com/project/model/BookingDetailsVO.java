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
@Table(name = "bookingdetailstable")
public class BookingDetailsVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "quantity")
	private int addonQuantity;

	@ManyToOne
	@JoinColumn
	private AddonVO addonvo;

	@ManyToOne
	@JoinColumn(name = "booking_id")
	private BookingVO bookingVO;

	public BookingVO getBookingVO() {
		return bookingVO;
	}

	public void setBookingVO(BookingVO bookingVO) {
		this.bookingVO = bookingVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAddonQuantity() {
		return addonQuantity;
	}

	public void setAddonQuantity(int addonQuantity) {
		this.addonQuantity = addonQuantity;
	}

	public AddonVO getAddonvo() {
		return addonvo;
	}

	public void setAddonvo(AddonVO addonvo) {
		this.addonvo = addonvo;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name = "status")
	private boolean status = true;

}
