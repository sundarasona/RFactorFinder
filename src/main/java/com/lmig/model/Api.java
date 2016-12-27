/*
 * Copyright (C) 2016, Liberty Mutual Group
 *
 * Created on Dec 22, 2016
 */

package com.lmig.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author n0158567
 *
 */
@Entity(name="Api")
public class Api {
	@Id
	private int id;
	private int tech_id;
	private String api;
	private String type;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the tech_id
	 */
	public int getTech_id() {
		return tech_id;
	}
	/**
	 * @param tech_id the tech_id to set
	 */
	public void setTech_id(int tech_id) {
		this.tech_id = tech_id;
	}
	/**
	 * @return the api
	 */
	public String getApi() {
		return api;
	}
	/**
	 * @param api the api to set
	 */
	public void setApi(String api) {
		this.api = api;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

}
