package com.project.service;

import java.util.List;

import com.project.model.EventTypeVO;

public interface EventTypeService {

	void saveEventType(EventTypeVO eventtypevo);

	List<EventTypeVO> findById(EventTypeVO eventtypevo);

	List<EventTypeVO> GetEventType();

}
