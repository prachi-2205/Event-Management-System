package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplainDAO;
import com.project.model.CityVO;
import com.project.model.ComplainVO;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService {

	@Autowired
	private ComplainDAO complainDAO; 
	
	public void saveComplain(ComplainVO complainVO) {
		// TODO Auto-generated method stub
		this.complainDAO.saveComplain(complainVO);
	}

	@Override
	public List<ComplainVO> getComplain() {
		// TODO Auto-generated method stub
		return this.complainDAO.getComplain();
	}

	@Override
	public List<ComplainVO> findById(ComplainVO complainVO) {
		// TODO Auto-generated method stub
		return this.complainDAO.findById(complainVO);
	}



	@Override
	public List findbyLoginId(ComplainVO complainVO) {
		// TODO Auto-generated method stub
		return this.complainDAO.findbyLoginId(complainVO);
	}


}