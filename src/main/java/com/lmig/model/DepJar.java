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
@Entity(name="dep_jar_t")
public class DepJar {
	@Id
	private int id;
	private String jar_name;
	private String version;
	/**
	 * @return the id
	 */
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
	 * @return the jar_name
	 */
	public String getJar_name() {
		return jar_name;
	}
	/**
	 * @param jar_name the jar_name to set
	 */
	public void setJar_name(String jar_name) {
		this.jar_name = jar_name;
	}
	/**
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}
	/**
	 * @param version the version to set
	 */
	public void setVersion(String version) {
		this.version = version;
	}
	}
