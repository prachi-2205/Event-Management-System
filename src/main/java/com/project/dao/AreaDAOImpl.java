package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;


@Repository
public class AreaDAOImpl implements AreaDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	public void saveArea(AreaVO areaVO) {
		// TODO Auto-generated method stub
		try{
			Session session=sessionFactory.getCurrentSession();
			session.saveOrUpdate(areaVO);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
	}

	public List<AreaVO> getArea() {
		List<AreaVO> areaList = new ArrayList<AreaVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AreaVO where status = true");
			areaList = (List<AreaVO>)query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return areaList;
	}
	
	public List<AreaVO> findById(AreaVO areaVO) {
		// TODO Auto-generated method stub
		List<AreaVO> areaList = new ArrayList<AreaVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AreaVO where status = true and id = " + areaVO.getId());
			areaList = (List<AreaVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return areaList;
	}
	

	@Override
	public List<AreaVO> findById1(AreaVO areaVO) {
		// TODO Auto-generated method stub
		List<AreaVO> areaList = new ArrayList<AreaVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AreaVO where status = true and cityVO = " + areaVO.getCityVO().getId());
			areaList = (List<AreaVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return areaList;
	}
}
