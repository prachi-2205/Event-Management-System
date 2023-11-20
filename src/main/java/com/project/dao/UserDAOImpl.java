package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.EventTypeVO;
import com.project.model.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUserReg(UserVO userVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(userVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<UserVO> getUser() {
		// TODO Auto-generated method stub
		List<UserVO> userList = new ArrayList<UserVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserVO where status = true");
			userList = (List<UserVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}
	
}
