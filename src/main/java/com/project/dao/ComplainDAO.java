package com.project.dao;

import java.util.List;

import com.project.model.CityVO;
import com.project.model.ComplainVO;

public interface ComplainDAO {

	void saveComplain(ComplainVO complainVO);

	List<ComplainVO> getComplain();

	List<ComplainVO> findById(ComplainVO complainVO);

	List findbyLoginId(ComplainVO complainVO);

}