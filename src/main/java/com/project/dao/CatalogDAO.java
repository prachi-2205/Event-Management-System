package com.project.dao;

import java.util.List;

import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;

public interface CatalogDAO {

	void saveCatalog(CatalogVO catalogVO);

	List<CatalogVO> getCatalog();

	List<CatalogVO> findById(CatalogVO catalogVO);

	void saveCatalogFile(CatalogFileVO catalogFileVO);

	List<CatalogFileVO> getCatalogFile();

	List<CatalogFileVO> findById(CatalogFileVO catalogfilevo);

	void deleteCatalogFile(CatalogFileVO catalogfilevo);

	List<CatalogFileVO> findByCatId(int catalogId);

	List<CatalogVO> findByCatalogId(int id);
}