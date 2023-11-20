package com.project.dao;

import java.util.List;

import com.project.model.UserVO;

public interface UserDAO {

	void saveUserReg(UserVO userVO);

	List<UserVO> getUser();

}
