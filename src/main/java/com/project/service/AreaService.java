package com.project.service;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.model.EventVO;

public interface AreaService {

	void saveArea(AreaVO areaVO);

	List<AreaVO> getArea();

	List<AreaVO> findById(AreaVO areaVO);
	
	List<AreaVO> findById1(AreaVO areaVO);

	

}
