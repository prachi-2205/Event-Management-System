package com.project.dao;

import java.util.List;

import com.project.model.UserCustomEventDecorationVO;
import com.project.model.UserCustomEventPlaceFileVO;
import com.project.model.UserCustomEventRequirmentVO;

public interface UserCustomReqDAO {

	void saveCustomerReq(UserCustomEventRequirmentVO userCustomEventRequirmentVO);

	List<UserCustomEventDecorationVO> findByCatId(int id);

	void deleteCatalogFile(UserCustomEventDecorationVO decorationFileVO);

	void savedecorationFile(UserCustomEventDecorationVO decorationFileVO);

	void savePlaceFile(UserCustomEventPlaceFileVO placeFileVO);

	List<UserCustomEventRequirmentVO> getcustomiseList();

	List<UserCustomEventDecorationVO> findBydecorationId(int customiseId,String type);

	List<UserCustomEventPlaceFileVO> findByPlaceId(int customiseId,String type);

	List<UserCustomEventRequirmentVO> findById(int id);

	List<UserCustomEventRequirmentVO> findById(UserCustomEventRequirmentVO userCustomEventRequirmentVO);

	List findbyLoginId(UserCustomEventRequirmentVO userCustomEventRequirmentVO);

}