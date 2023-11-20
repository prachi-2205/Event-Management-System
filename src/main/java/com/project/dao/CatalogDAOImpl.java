package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CatalogFileVO;
import com.project.model.CatalogVO;
import com.project.model.EventVO;


@Repository
public class CatalogDAOImpl implements CatalogDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveCatalog(CatalogVO catalogVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(catalogVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public List<CatalogVO> getCatalog() {
		// TODO Auto-generated method stub
		List<CatalogVO> catalogList = new ArrayList<CatalogVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CatalogVO where status = true");
			catalogList = (List<CatalogVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogList;
	}

	@Override
	public List<CatalogVO> findById(CatalogVO catalogVO) {
		// TODO Auto-generated method stub
		List<CatalogVO> catalogList = new ArrayList<CatalogVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CatalogVO where status = true and id = " + catalogVO.getId());
			catalogList = (List<CatalogVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogList;
	}

	@Override
	public void saveCatalogFile(CatalogFileVO catalogFileVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(catalogFileVO);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public List<CatalogFileVO> getCatalogFile() {
		// TODO Auto-generated method stub
		List<CatalogFileVO> catalogFileList = new ArrayList<CatalogFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CatalogFileVO where status = true");
			catalogFileList = (List<CatalogFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogFileList;
	}

	public List<CatalogFileVO> findById(CatalogFileVO catalogfilevo) {
		// TODO Auto-generated method stub
		List<CatalogFileVO> catalogFileList = new ArrayList<CatalogFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from CatalogFileVO where status = true and id = " + catalogfilevo.getId());
			catalogFileList = (List<CatalogFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogFileList;
	}

	public List<CatalogFileVO> findByCatId(int catalogId) {
		// TODO Auto-generated method stub
		List<CatalogFileVO> catalogFileList = new ArrayList<CatalogFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from CatalogFileVO where status = true and catalogVO = " + catalogId);
			catalogFileList = (List<CatalogFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogFileList;
	}
	
	@Override
	public void deleteCatalogFile(CatalogFileVO catalogfilevo) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.delete(catalogfilevo);

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public List<CatalogVO> findByCatalogId(int id) {
		// TODO Auto-generated method stub
		List<CatalogVO> catalogList = new ArrayList<CatalogVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CatalogVO where status = true and eventTypeVO = " + id);
			catalogList = (List<CatalogVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return catalogList;
	}

}