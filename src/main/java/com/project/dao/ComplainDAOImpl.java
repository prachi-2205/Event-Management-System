package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.project.model.ComplainVO;

@Repository
public class ComplainDAOImpl  implements ComplainDAO{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void saveComplain(ComplainVO complainVO) {
		try{
			Session session=sessionFactory.getCurrentSession();
			
			session.saveOrUpdate(complainVO);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		
	}
	@Override
	public List<ComplainVO> getComplain() {
		// TODO Auto-generated method stub
		List<ComplainVO> complainList = new ArrayList<ComplainVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplainVO where status = true");
			complainList = (List<ComplainVO>)query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return complainList;
	}
	@Override
	public List<ComplainVO> findById(ComplainVO complainVO) {
		// TODO Auto-generated method stub
		List<ComplainVO> complainList = new ArrayList<ComplainVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplainVO where status = true and id = " +complainVO.getId());
			complainList = (List<ComplainVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return complainList;
	}
	@Override
	public List findbyLoginId(ComplainVO complainVO) {
		List<ComplainVO> complainList = new ArrayList<ComplainVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplainVO where status = true and loginVO.loginId = " +complainVO.getLoginVO().getLoginId());
			complainList = (List<ComplainVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return complainList;
	}

}