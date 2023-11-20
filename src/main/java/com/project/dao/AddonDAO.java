package com.project.dao;

import java.util.List;

import com.project.model.AddonVO;

public interface AddonDAO {

	void saveAddon(AddonVO addonVO);

	List<AddonVO> GetAddon();

	List<AddonVO> findById(AddonVO AddonVO);

}
