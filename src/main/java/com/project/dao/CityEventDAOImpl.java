package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityEventVO;
import com.project.model.CityVO;

@Repository
public class CityEventDAOImpl  implements CityEventDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveCityEvent(CityEventVO cityEventVO) {
		// TODO Auto-generated method stub
		try{
			Session session=sessionFactory.getCurrentSession();
			
			session.saveOrUpdate(cityEventVO);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
	}

	@Override
	public List<CityEventVO> getCityEventList() {
		// TODO Auto-generated method stub
		List<CityEventVO> cityEventList = new ArrayList<CityEventVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityEventVO where status = true");
			cityEventList = (List<CityEventVO>)query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityEventList;
	}

	@Override
	public List<CityEventVO> findById(CityEventVO cityEventVO) {
		// TODO Auto-generated method stub
		List<CityEventVO> cityEventList = new ArrayList<CityEventVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityEventVO where status = true and id = " +cityEventVO.getId());
			cityEventList = (List<CityEventVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityEventList;
	}

}