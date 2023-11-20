package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.AddonVO;
import com.project.model.CityVO;
@Service
@Transactional
public class CityServiceImpl implements CityService {

	@Autowired
	private CityDAO citydao;
	public void saveCity(CityVO CityVO) {
		// TODO Auto-generated method stub
		this.citydao.saveCity(CityVO);
	}
	
	public List<CityVO> GetCity() {
		// TODO Auto-generated method stub
		
		return this.citydao.GetCity();
	}
	
	public List<CityVO> findById(CityVO CityVO) {
		// TODO Auto-generated method stub
		return this.citydao.findById(CityVO);
	}

}
