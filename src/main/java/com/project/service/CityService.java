package com.project.service;

import java.util.List;

import com.project.model.CityVO;

public interface CityService {

	void saveCity(CityVO cityVO);

	List<CityVO> GetCity();

	List<CityVO> findById(CityVO cityVO);

}
