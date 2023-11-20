package com.project.service;

import java.util.List;

import com.project.model.BookingDetailsVO;
import com.project.model.BookingVO;

public interface BookingDetailsService {
	void saveEventDetails(BookingDetailsVO addonBookingVO);

	List<BookingDetailsVO> getAddonBooking();

	List<BookingDetailsVO> findById(BookingDetailsVO addonBookingVO);

	List<BookingDetailsVO> findById(int id);

	List findbyLoginId(BookingVO bookingVO);

}
