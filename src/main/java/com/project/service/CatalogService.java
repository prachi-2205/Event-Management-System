package com.project.service;

import java.util.List;

import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;

public interface CatalogService {

	void saveCatalog(CatalogVO catalogVO);

	List<CatalogVO> getCatalog();

	List<CatalogVO> findById(CatalogVO catalogVO);

	List<CatalogFileVO> findByCatId(int catalogId);

	void saveCatalogFile(CatalogFileVO catalogFileVO);

	List<CatalogFileVO> getCatalogFile();

	List<CatalogFileVO> findById(CatalogFileVO catalogfilevo);

	void deleteCatalogFile(CatalogFileVO catalogfilevo);

	List<CatalogVO> findByCatalogId(int id);

}