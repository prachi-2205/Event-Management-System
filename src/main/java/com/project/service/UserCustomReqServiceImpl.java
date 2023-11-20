package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserCustomReqDAO;
import com.project.model.UserCustomEventDecorationVO;
import com.project.model.UserCustomEventPlaceFileVO;
import com.project.model.UserCustomEventRequirmentVO;

@Service
@Transactional
public class UserCustomReqServiceImpl implements UserCustomReqService {

	@Autowired
	private UserCustomReqDAO userCustomReqDAO;

	@Override
	public void saveCustomerReq(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub
		this.userCustomReqDAO.saveCustomerReq(userCustomEventRequirmentVO);
	}

	@Override
	public List<UserCustomEventDecorationVO> findByCatId(int id) {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.findByCatId(id);
	}

	@Override
	public void deleteCatalogFile(UserCustomEventDecorationVO decorationFileVO) {
		// TODO Auto-generated method stub
		this.userCustomReqDAO.deleteCatalogFile(decorationFileVO);
	}

	@Override
	public void savedecorationFile(UserCustomEventDecorationVO decorationFileVO) {
		// TODO Auto-generated method stub
		this.userCustomReqDAO.savedecorationFile(decorationFileVO);
	}

	@Override
	public void savePlaceFile(UserCustomEventPlaceFileVO placeFileVO) {
		// TODO Auto-generated method stub
		this.userCustomReqDAO.savePlaceFile(placeFileVO);
	}

	@Override
	public List<UserCustomEventRequirmentVO> getcustomiseList() {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.getcustomiseList();
	}

	@Override
	public List<UserCustomEventDecorationVO> findBydecorationId(int customiseId, String type) {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.findBydecorationId(customiseId, type);
	}

	@Override
	public List<UserCustomEventRequirmentVO> findBYId(int id) {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.findById(id);
	}

	@Override
	public List<UserCustomEventRequirmentVO> findById(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.findById(userCustomEventRequirmentVO);
	}

	@Override
	public List findbyLoginId(UserCustomEventRequirmentVO userCustomEventRequirmentVO) {
		// TODO Auto-generated method stub
		return this.userCustomReqDAO.findbyLoginId(userCustomEventRequirmentVO);
	}

}