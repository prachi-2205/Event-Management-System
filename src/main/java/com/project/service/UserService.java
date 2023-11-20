package com.project.service;

import java.util.List;

import com.project.model.UserVO;

public interface UserService {

	void saveUserReg(UserVO userVO);

	List<UserVO> getUser();

}
