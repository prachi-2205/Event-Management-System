package com.project.service;

import java.util.List;


import com.project.model.BookingVO;

public interface BookingService {

	void saveBooking(BookingVO bookingVO);

	List<BookingVO> findById(int id);

	List<BookingVO> getBookingData();

	List findbyLoginId(BookingVO bookingVO);

	List<BookingVO> findById(BookingVO bookingVO);



	

}
