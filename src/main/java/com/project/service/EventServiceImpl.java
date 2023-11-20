package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.EventDAO;
import com.project.model.EventVO;

@Service
@Transactional
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO eventdao;

	public void saveEvent(EventVO eventVO) {
		// TODO Auto-generated method stub
		this.eventdao.saveEvent(eventVO);
	}

	public List<EventVO> getEvent() {
		// TODO Auto-generated method stub
		return this.eventdao.getEvent();
	}

	@Override
	public List<EventVO> findById(EventVO eventVO) {
		// TODO Auto-generated method stub
		return this.eventdao.findById(eventVO);
	}

	public List<EventVO> findByEventTypeId(int eventTypeId) {
		return this.eventdao.findByEventTypeId(eventTypeId);
	}
}