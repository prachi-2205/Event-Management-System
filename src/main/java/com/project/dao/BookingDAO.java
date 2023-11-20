package com.project.dao;

import java.util.List;



import com.project.model.BookingVO;

public interface BookingDAO {

	void saveBooking(BookingVO bookingVO);

	List<BookingVO> findById(BookingVO bookingVO);

	List<BookingVO> getBookingData();

	List findbyLoginId(BookingVO bookingVO);

	List<BookingVO> findById(int id);

	



}
