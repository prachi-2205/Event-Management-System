package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.project.model.EventTypeVO;

@Repository
public class EventTypeDAOImpl implements EventTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveEventType(EventTypeVO eventtypevo) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(eventtypevo);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}


	public List<EventTypeVO> findById(EventTypeVO eventtypevo) {
		// TODO Auto-generated method stub
		
		List<EventTypeVO> eventypeList = new ArrayList<EventTypeVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from EventTypeVO where status = true and id = " + eventtypevo.getId());
			eventypeList = (List<EventTypeVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eventypeList;
	}


	@Override
	public List<EventTypeVO> GetEventType() {
		// TODO Auto-generated method stub
		List<EventTypeVO> eventypeList = new ArrayList<EventTypeVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from EventTypeVO where status = true");
			eventypeList = (List<EventTypeVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eventypeList;
		
	}

	

}
