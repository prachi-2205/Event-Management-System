package com.project.dao;

import java.util.List;

import com.project.model.CityEventVO;

public interface CityEventDAO {

	void saveCityEvent(CityEventVO cityEventVO);

	List<CityEventVO> getCityEventList();

	List<CityEventVO> findById(CityEventVO cityEventVO);

}