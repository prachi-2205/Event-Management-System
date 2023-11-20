package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityEventDAO;
import com.project.model.CityEventVO;

@Service
@Transactional
public class CityEventServiceImpl  implements CityEventService{
	@Autowired
	private CityEventDAO cityEventDAO;
	
	@Override
	public void saveCityEvent(CityEventVO cityEventVO) {
		// TODO Auto-generated method stub
		this.cityEventDAO.saveCityEvent(cityEventVO);
	}

	@Override
	public List<CityEventVO> getCityEventList() {
		// TODO Auto-generated method stub
		return this.cityEventDAO.getCityEventList();
	}

	@Override
	public List<CityEventVO> findById(CityEventVO cityEventVO) {
		// TODO Auto-generated method stub
		return this.cityEventDAO.findById(cityEventVO);
	}

}