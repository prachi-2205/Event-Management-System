package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AddonDAO;
import com.project.dao.AreaDAO;
import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.model.EventVO;

@Service
@Transactional
public class AreaServiceImpl implements AreaService{

	
	@Autowired
	private AreaDAO areadao; 
	public void saveArea(AreaVO areaVO) {
		// TODO Auto-generated method stub
		this.areadao.saveArea(areaVO);
	}
	
	public List<AreaVO> getArea() {
		// TODO Auto-generated method stub
		return this.areadao.getArea();
	}
	
	public List<AreaVO> findById(AreaVO areaVO) {
		// TODO Auto-generated method stub
		return this.areadao.findById(areaVO);
	}

	

	@Override
	public List<AreaVO> findById1(AreaVO areaVO) {
		// TODO Auto-generated method stub
		return this.areadao.findById1(areaVO);
	}

}
