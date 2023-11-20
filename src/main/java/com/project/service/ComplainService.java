package com.project.service;

import java.util.List;


import com.project.model.ComplainVO;

public interface ComplainService {

	void saveComplain(ComplainVO complainVO);

	List<ComplainVO> getComplain();

	List<com.project.model.ComplainVO> findById(ComplainVO complainVO);

	List findbyLoginId(ComplainVO complainVO);



}