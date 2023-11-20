package com.project.service;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginService {

	void saveUserReg(LoginVO loginVO);
	
	public List<LoginVO> viewUser(int id);

	LoginVO getByUserName(String username);


}
