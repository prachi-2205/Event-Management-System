package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.UserVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUserReg(LoginVO loginVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(loginVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<LoginVO> viewUser(int id) {
		// TODO Auto-generated method stub
		List<LoginVO> loginList = new ArrayList<LoginVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from LoginVO where loginid ="+id);
			loginList = (List<LoginVO>) query.list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return loginList;
	}

	@Override
	public LoginVO getByUserName(String username) {
		List<LoginVO> loginList = new ArrayList<LoginVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from LoginVO where username ='"+username+"'");
			loginList = query.list();
			return (LoginVO)loginList.get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return new LoginVO();
		}
		
	}
}
