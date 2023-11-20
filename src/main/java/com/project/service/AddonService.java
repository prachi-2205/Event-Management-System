package com.project.service;

import java.util.List;

import com.project.model.AddonVO;
import com.project.model.CityVO;

public interface AddonService {

	void saveAddon(AddonVO AddonVO);

	List<AddonVO> GetAddon();

	List<AddonVO> findById(AddonVO AddonVO);

	

	


}
