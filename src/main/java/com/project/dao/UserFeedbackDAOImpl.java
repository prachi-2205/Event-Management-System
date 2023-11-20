package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.project.model.FeedbackVO;

@Repository
public class UserFeedbackDAOImpl implements UserFeedbackDAO {

	@Autowired
	private SessionFactory sessionFactory;
	public void saveFeedback(FeedbackVO feedbackVO) {
		try{
			Session session=sessionFactory.getCurrentSession();
			session.saveOrUpdate(feedbackVO);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		
	}
	@Override
	public List<FeedbackVO> viewFeedback() {
		// TODO Auto-generated method stub
		List<FeedbackVO> FeedbackList = new ArrayList<FeedbackVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from FeedbackVO where status = true");
			FeedbackList = (List<FeedbackVO>)query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return FeedbackList;
	}
	@Override
	public List<FeedbackVO> findById(FeedbackVO FeedbackVO) {
		// TODO Auto-generated method stub
		
		List<FeedbackVO> FeedbackList = new ArrayList<FeedbackVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from FeedbackVO where status = true and id = " +FeedbackVO.getId());
			FeedbackList = (List<FeedbackVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return FeedbackList;
		}
}