package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.model.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void saveUserReg(UserVO userVO) {
		// TODO Auto-generated method stub
		this.userDAO.saveUserReg(userVO);
	}

	@Override
	public List<UserVO> getUser() {
		// TODO Auto-generated method stub
		return this.userDAO.getUser();
	}

}
