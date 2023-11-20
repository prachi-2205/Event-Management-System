package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.EventVO;

@Repository
public class EventDAOImpl implements EventDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveEvent(EventVO eventVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(eventVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public List<EventVO> getEvent() {
		// TODO Auto-generated method stub
		List<EventVO> eventList = new ArrayList<EventVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from EventVO where status = true");
			eventList = (List<EventVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eventList;
	}

	public List<EventVO> findById(EventVO eventVO) {
		// TODO Auto-generated method stub
		List<EventVO> eventList = new ArrayList<EventVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from EventVO where status = true and id = " + eventVO.getId());
			eventList = (List<EventVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eventList;
	}

	public List<EventVO> findByEventTypeId(int eventTypeId) {
		// TODO Auto-generated method stub
		List<EventVO> eventList = new ArrayList<EventVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from EventVO where status = true and eventTypeVO = " + eventTypeId);
			eventList = (List<EventVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eventList;
	}

}