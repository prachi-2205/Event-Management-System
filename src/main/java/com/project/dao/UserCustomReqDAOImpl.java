package com.project.dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.BookingVO;
import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;
import com.project.model.ComplainVO;
import com.project.model.UserCustomEventDecorationVO;
import com.project.model.UserCustomEventPlaceFileVO;
import com.project.model.UserCustomEventRequirmentVO;

@Repository
public class UserCustomReqDAOImpl implements UserCustomReqDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomerReq(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub

		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(userCustomEventRequirmentVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public List<UserCustomEventDecorationVO> findByCatId(int id) {
		// TODO Auto-generated method stub
		List<UserCustomEventDecorationVO> decorationFileList = new ArrayList<UserCustomEventDecorationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from UserCustomEventDecorationVO where status = true and userReq = " + id);
			decorationFileList = (List<UserCustomEventDecorationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return decorationFileList;
	}

	@Override
	public void deleteCatalogFile(UserCustomEventDecorationVO decorationFileVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.delete(decorationFileVO);

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public void savedecorationFile(UserCustomEventDecorationVO decorationFileVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(decorationFileVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public void savePlaceFile(UserCustomEventPlaceFileVO placeFileVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(placeFileVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public List<UserCustomEventRequirmentVO> getcustomiseList() {
		// TODO Auto-generated method stub
		List<UserCustomEventRequirmentVO> customiseList = new ArrayList<UserCustomEventRequirmentVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserCustomEventRequirmentVO");
			customiseList = (List<UserCustomEventRequirmentVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customiseList;
	}

	@Override
	public List<UserCustomEventDecorationVO> findBydecorationId(int customiseId, String type) {
		// TODO Auto-generated method stub
		List<UserCustomEventDecorationVO> decorationFileList = new ArrayList<UserCustomEventDecorationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from UserCustomEventDecorationVO where userCustomEventRequirmentVO = " + customiseId);
			decorationFileList = (List<UserCustomEventDecorationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return decorationFileList;
	}

	@Override
	public List<UserCustomEventPlaceFileVO> findByPlaceId(int customiseId, String type) {
		// TODO Auto-generated method stub

		String query = "";

		if (type.equals("decoration")) {
			query = "from UserCustomEventPlaceFileVO where userCustomEventRequirmentVO = " + customiseId;
		} else if (type.equals("places")) {
			query = "from UserCustomEventPlaceFileVO where userCustomEventRequirmentVO = " + customiseId;
		}

		List<UserCustomEventPlaceFileVO> decorationFileList = new ArrayList<UserCustomEventPlaceFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery(query);
			decorationFileList = (List<UserCustomEventPlaceFileVO>) q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return decorationFileList;
	}

	@Override
	public List<UserCustomEventRequirmentVO> findById(int id) {
		// TODO Auto-generated method stub
		List<UserCustomEventRequirmentVO> decorationFileList = new ArrayList<UserCustomEventRequirmentVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from UserCustomEventRequirmentVO where id = " + id);
			decorationFileList = (List<UserCustomEventRequirmentVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return decorationFileList;
	}

	@Override
	public List<UserCustomEventRequirmentVO> findById(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub
		List<UserCustomEventRequirmentVO> customiseList = new ArrayList<UserCustomEventRequirmentVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserCustomEventRequirmentVO where id = " +userCustomEventRequirmentVO.getId());
			customiseList = (List<UserCustomEventRequirmentVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customiseList;
	}

	@Override
	public List findbyLoginId(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub
		List<UserCustomEventRequirmentVO> bookingList = new ArrayList<UserCustomEventRequirmentVO>();
		System.out.println("Test:::::::::::" + userCustomEventRequirmentVO.getLoginVO().getLoginId());
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserCustomEventRequirmentVO where loginVO = " + userCustomEventRequirmentVO.getLoginVO().getLoginId());
			bookingList = (List<UserCustomEventRequirmentVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bookingList;
	}

}