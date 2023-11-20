package com.project.service;

import java.util.List;

import com.project.model.EventVO;

public interface EventService {

	void saveEvent(EventVO eventVO);

	List<EventVO> getEvent();

	List<EventVO> findById(EventVO eventVO);

	List<EventVO> findByEventTypeId(int eventTypeId);

}