package com.project.dao;

import java.util.List;

import com.project.model.BookingDetailsVO;
import com.project.model.BookingVO;

public interface BookingDetailsDAO {
	void saveEventDetails(BookingDetailsVO addonBookingVO);

	List<BookingDetailsVO> getAddonBooking();

	List<BookingDetailsVO> findById(BookingDetailsVO addonBookingVO);

	List<BookingDetailsVO> findById(int id);

	List findbyLoginId(BookingVO bookingVO);

}
