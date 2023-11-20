package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BookingDAO;
import com.project.dao.BookingDetailsDAO;
import com.project.model.BookingDetailsVO;
import com.project.model.BookingVO;
@Service
@Transactional
public class BookingDetailsServiceImpl implements BookingDetailsService{

	@Autowired
	private BookingDetailsDAO bookingDetailsDAO;
	
	
	public void saveEventDetails(BookingDetailsVO addonBookingVO) {
		// TODO Auto-generated method stub
		this.bookingDetailsDAO.saveEventDetails(addonBookingVO);
		
	}

	public List<BookingDetailsVO> getAddonBooking() {
		// TODO Auto-generated method stub
		return this.bookingDetailsDAO.getAddonBooking();
	}

	@Override
	public List<BookingDetailsVO> findById(BookingDetailsVO addonBookingVO) {
		// TODO Auto-generated method stub
		return this.bookingDetailsDAO.findById(addonBookingVO);
	}

	@Override
	public List<BookingDetailsVO> findById(int id) {
		// TODO Auto-generated method stub
		return this.bookingDetailsDAO.findById(id);
	}

	@Override
	public List findbyLoginId(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		return this.bookingDetailsDAO.findbyLoginId(bookingVO);
	}
	
	
}
