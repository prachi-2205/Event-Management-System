package com.project.dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.project.model.CityVO;

@Repository
public class CityDAOImpl implements CityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveCity(CityVO cityVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(cityVO);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	public List<CityVO> GetCity() {
		// TODO Auto-generated method stub
		List<CityVO> cityList = new ArrayList<CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityVO where status = true");
			cityList = (List<CityVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityList;
	}


	public List<CityVO> findById(CityVO cityVO) {
		// TODO Auto-generated method stub
		List<CityVO> cityList = new ArrayList<CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityVO where status = true and id = " + cityVO.getId());
			cityList = (List<CityVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityList;
	}

}
