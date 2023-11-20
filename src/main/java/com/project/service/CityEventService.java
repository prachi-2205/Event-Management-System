package com.project.service;

import java.util.List;

import com.project.model.CityEventVO;


public interface CityEventService {

	void saveCityEvent(CityEventVO cityEventVO);

	List<CityEventVO> getCityEventList();

	List<com.project.model.CityEventVO> findById(CityEventVO cityEventVO);

	

}