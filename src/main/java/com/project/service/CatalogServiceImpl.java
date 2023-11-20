package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CatalogDAO;
import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;

@Service
@Transactional
public class CatalogServiceImpl implements CatalogService {

	@Autowired
	private CatalogDAO catalogdao;

	public void saveCatalog(CatalogVO catalogVO) {
		// TODO Auto-generated method stub
		this.catalogdao.saveCatalog(catalogVO);
	}

	@Override
	public List<CatalogVO> getCatalog() {
		// TODO Auto-generated method stub
		return this.catalogdao.getCatalog();
	}

	@Override
	public List<CatalogVO> findById(CatalogVO catalogVO) {
		// TODO Auto-generated method stub
		return this.catalogdao.findById(catalogVO);
	}

	@Override
	public void saveCatalogFile(CatalogFileVO catalogFileVO) {
		// TODO Auto-generated method stub
		this.catalogdao.saveCatalogFile(catalogFileVO);
	}

	@Override
	public List<CatalogFileVO> getCatalogFile() {
		// TODO Auto-generated method stub
		return this.catalogdao.getCatalogFile();
	}

	@Override
	public List<CatalogFileVO> findById(CatalogFileVO catalogfilevo) {
		// TODO Auto-generated method stub
		return this.catalogdao.findById(catalogfilevo);
	}

	@Override
	public void deleteCatalogFile(CatalogFileVO catalogfilevo) {
		// TODO Auto-generated method stub
		this.catalogdao.deleteCatalogFile(catalogfilevo);
	}

	@Override
	public List<CatalogFileVO> findByCatId(int catalogId) {
		return this.catalogdao.findByCatId(catalogId);
	}

	@Override
	public List<CatalogVO> findByCatalogId(int id) {
		// TODO Auto-generated method stub
		return this.catalogdao.findByCatalogId(id);
	}

}