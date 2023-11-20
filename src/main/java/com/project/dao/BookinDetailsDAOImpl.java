package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.BookingDetailsVO;
import com.project.model.BookingVO;
@Repository
public class BookinDetailsDAOImpl implements BookingDetailsDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void saveEventDetails(BookingDetailsVO addonBookingVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(addonBookingVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public List<BookingDetailsVO> getAddonBooking() {
		// TODO Auto-generated method stub
		List<BookingDetailsVO> addonBookingList = new ArrayList<BookingDetailsVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingDetailsVO where status = true");
			addonBookingList = (List<BookingDetailsVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addonBookingList;
	}

	@Override
	public List<BookingDetailsVO> findById(BookingDetailsVO addonBookingVO) {
		// TODO Auto-generated method stub
		List<BookingDetailsVO> bookingList = new ArrayList<BookingDetailsVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingDetailsVO where status = true and id = " + addonBookingVO.getBookingVO().getId());
			bookingList = (List<BookingDetailsVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookingList;
	}

	@Override
	public List<BookingDetailsVO> findById(int id) {
		// TODO Auto-generated method stub
		List<BookingDetailsVO> bookingList = new ArrayList<BookingDetailsVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingDetailsVO where status = true and booking_id = " + id);
			bookingList = (List<BookingDetailsVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookingList;
	}

	@Override
	public List findbyLoginId(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		List<BookingDetailsVO> bookingList = new ArrayList<BookingDetailsVO>();
		System.out.println("Test:::::::::::" + bookingVO.getLoginVo().getLoginId());
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingDetailsVO where loginVo = " + bookingVO.getLoginVo().getLoginId());
			bookingList = (List<BookingDetailsVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bookingList;
	}

}
