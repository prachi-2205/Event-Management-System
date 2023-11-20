package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AddonVO;
import com.project.model.BookingVO;
import com.project.model.CatalogVO;
import com.project.model.ComplainVO;

@Repository
public class BookingDAOImpl implements BookingDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveBooking(BookingVO bookingVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(bookingVO);
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	@Override
	public List<BookingVO> findById(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		List<BookingVO> bookingList = new ArrayList<BookingVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingVO where  id = " + bookingVO.getId());
			bookingList = (List<BookingVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookingList;
	}

	@Override
	public List<BookingVO> getBookingData() {
		// TODO Auto-generated method stub
		List<BookingVO> bookingDataList = new ArrayList<BookingVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingVO");
			bookingDataList = (List<BookingVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookingDataList;
	}

	@Override
	public List findbyLoginId(BookingVO bookingVO) {
		// TODO Auto-generated method stub
		List<BookingVO> bookingList = new ArrayList<BookingVO>();
		System.out.println("Test:::::::::::" + bookingVO.getLoginVo().getLoginId());
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingVO where loginVo = " + bookingVO.getLoginVo().getLoginId());
			bookingList = (List<BookingVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bookingList;
	}

	@Override
	public List<BookingVO> findById(int id) {
		System.out.println(id);
		List<BookingVO> bookingList = new ArrayList<BookingVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BookingVO where id = " + id);
			bookingList = (List<BookingVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookingList;
	}
}
