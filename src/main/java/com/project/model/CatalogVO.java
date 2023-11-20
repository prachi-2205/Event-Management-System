package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="catalog_table")
public class CatalogVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn
	private EventTypeVO eventTypeVO;
	
	
	public String getCatalogPrice() {
		return catalogPrice;
	}

	public void setCatalogPrice(String catalogPrice) {
		this.catalogPrice = catalogPrice;
	}

	@Column(name="catalog_Price")
	private String catalogPrice;

	@Column(name="catalog_descrption")
	private String catalogdescrption;
	
	@Column(name="catalogfileName")
	private String fileName;
	

	@Column(name="catalogfilePath")
	private String filePath;

	@Column(name="status")
	private boolean status=true;

	public String getCatalogdescrption() {
		return catalogdescrption;
	}

	public void setCatalogdescrption(String catalogdescrption) {
		this.catalogdescrption = catalogdescrption;
	}



	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public EventTypeVO getEventTypeVO() {
		return eventTypeVO;
	}

	public void setEventTypeVO(EventTypeVO eventTypeVO) {
		this.eventTypeVO = eventTypeVO;
	}

	

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
}