package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AddonVO;

@Repository
public class AddonDAOImpl implements AddonDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveAddon(AddonVO addonVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(addonVO);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<AddonVO> GetAddon() {
		// TODO Auto-generated method stub

		List<AddonVO> addonList = new ArrayList<AddonVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddonVO where status = true");
			addonList = (List<AddonVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addonList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AddonVO> findById(AddonVO addonVO) {
		List<AddonVO> addonList = new ArrayList<AddonVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddonVO where status = true and id = " + addonVO.getId());
			addonList = (List<AddonVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addonList;
	}

}
