package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.EventTypeDAO;
import com.project.model.EventTypeVO;


@Service
@Transactional
public class EventTypeServiceImpl implements EventTypeService {


	@Autowired
	private EventTypeDAO eventtypedao;
	
	
	public void saveEventType(EventTypeVO eventtypevo) {
		// TODO Auto-generated method stub
		this.eventtypedao.saveEventType(eventtypevo);
		
	}


	@Override
	public List<EventTypeVO> findById(EventTypeVO eventtypevo) {
		// TODO Auto-generated method stub
		return this.eventtypedao.findById(eventtypevo);
	}


	@Override
	public List<EventTypeVO> GetEventType() {
		// TODO Auto-generated method stub
		return this.eventtypedao.GetEventType();
	}

}
