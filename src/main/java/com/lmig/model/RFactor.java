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
@Entity(name="r_factor_t")
public class RFactor {
	@Id

	private int id;	
	private String tech_API;
	private String complexity;
	private String r_factor;
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
	 * @return the tech_API
	 */
	public String getTech_API() {
		return tech_API;
	}
	/**
	 * @param tech_API the tech_API to set
	 */
	public void setTech_API(String tech_API) {
		this.tech_API = tech_API;
	}
	/**
	 * @return the complexity
	 */
	public String getComplexity() {
		return complexity;
	}
	/**
	 * @param complexity the complexity to set
	 */
	public void setComplexity(String complexity) {
		this.complexity = complexity;
	}
	/**
	 * @return the r_factor
	 */
	public String getR_factor() {
		return r_factor;
	}
	/**
	 * @param r_factor the r_factor to set
	 */
	public void setR_factor(String r_factor) {
		this.r_factor = r_factor;
	}
}
