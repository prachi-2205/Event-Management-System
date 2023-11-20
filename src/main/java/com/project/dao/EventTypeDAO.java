package com.project.dao;

import java.util.List;

import com.project.model.EventTypeVO;

public interface EventTypeDAO {

	void saveEventType(EventTypeVO eventtypevo);

	List<EventTypeVO> findById(EventTypeVO eventtypevo);

	List<EventTypeVO> GetEventType();



}
