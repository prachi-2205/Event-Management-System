package com.project.dao;

import java.util.List;

import com.project.model.EventVO;

public interface EventDAO {

	void saveEvent(EventVO eventVO);

	List<EventVO> getEvent();

	List<EventVO> findById(EventVO eventVO);

	List<EventVO> findByEventTypeId(int eventTypeId);
}