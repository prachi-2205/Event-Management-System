package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.LoginDAO;
import com.project.model.LoginVO;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public void saveUserReg(LoginVO loginVO) {
		// TODO Auto-generated method stub
		this.loginDAO.saveUserReg(loginVO);
	}

	@Override
	public List<LoginVO> viewUser(int id) {
		// TODO Auto-generated method stub
		return this.loginDAO.viewUser(id);
	}

	@Override
	public LoginVO getByUserName(String username) {
		
		return this.loginDAO.getByUserName(username);
	}

}
