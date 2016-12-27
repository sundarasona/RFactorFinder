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
@Entity(name="tech_overview_t")
public class Overview {
	@Id
	private int id;
	private String technology;
	private String db;
	private String persistance_API;
	private String user_Interface;
	private String server;
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
	 * @return the technology
	 */
	public String getTechnology() {
		return technology.replaceAll(",", " <br>");
	}
	/**
	 * @param technology the technology to set
	 */
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	/**
	 * @return the db
	 */
	public String getDb() {
		return db;
	}
	/**
	 * @param db the db to set
	 */
	public void setDb(String db) {
		this.db = db;
	}
	/**
	 * @return the persistance_API
	 */
	public String getPersistance_API() {
		return persistance_API;
	}
	/**
	 * @param persistance_API the persistance_API to set
	 */
	public void setPersistance_API(String persistance_API) {
		this.persistance_API = persistance_API;
	}
	/**
	 * @return the user_Interface
	 */
	public String getUser_Interface() {
		return user_Interface;
	}
	/**
	 * @param user_Interface the user_INterface to set
	 */
	public void setUser_Interface(String user_Interface) {
		this.user_Interface = user_Interface;
	}
	/**
	 * @return the server
	 */
	public String getServer() {
		return server;
	}
	/**
	 * @param server the server to set
	 */
	public void setServer(String server) {
		this.server = server;
	}
}
