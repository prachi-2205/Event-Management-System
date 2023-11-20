package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginDAO {

	void saveUserReg(LoginVO loginVO);

	public List<LoginVO> viewUser(int id);

	LoginVO getByUserName(String username);
}
