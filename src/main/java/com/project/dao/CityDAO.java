package com.project.dao;

import java.util.List;

import com.project.model.CityVO;

public interface CityDAO {

	void saveCity(CityVO CityVO);

	List<CityVO> GetCity();

	List<CityVO> findById(CityVO CityVO);

}
