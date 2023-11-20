package com.project.service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BookingDAO;

import com.project.model.BookingVO;

@Service
@Transactional
public class BookingServiceImpl implements BookingService {


	@Autowired
	private BookingDAO bookingDAO;	
	
	public void saveBooking(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		this.bookingDAO.saveBooking(bookingVO);
	}

	@Override
	public List<BookingVO> findById(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		return this.bookingDAO.findById(bookingVO);
	}

	@Override
	public List<BookingVO> getBookingData() {
		// TODO Auto-generated method stub
		return this.bookingDAO.getBookingData();
	}

	@Override
	public List findbyLoginId(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		return  this.bookingDAO.findbyLoginId(bookingVO);
	}

	@Override
	public List<BookingVO> findById(int id) {
		// TODO Auto-generated method stub
		return this.bookingDAO.findById(id);
	}

	



	

}
