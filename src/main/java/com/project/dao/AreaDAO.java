package com.project.dao;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;


public interface AreaDAO {

	void saveArea(AreaVO areaVO);

	List<AreaVO> getArea();

	List<AreaVO> findById(AreaVO areaVO);

	

	List<AreaVO> findById1(AreaVO areaVO);

}
