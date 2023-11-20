package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AddonDAO;
import com.project.model.AddonVO;


@Service
@Transactional
public class AddonServiceImpl implements AddonService {

	@Autowired
	private AddonDAO addondao;

	public void saveAddon(AddonVO AddonVO) {
		// TODO Auto-generated method stub
		this.addondao.saveAddon(AddonVO);
	}

	@Override
	public List<AddonVO> GetAddon() {
		// TODO Auto-generated method stub
		return this.addondao.GetAddon();
	}

	@Override
	public List<AddonVO> findById(AddonVO AddonVO) {
		// TODO Auto-generated method stub
		return this.addondao.findById(AddonVO);
	}

	

}
