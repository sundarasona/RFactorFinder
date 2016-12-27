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
@Entity(name="dep_class_t")
public class DepClass {
	@Id
	private int id;
	private String class_name;
	private String dependent_classes;
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
	 * @return the class_name
	 */
	public String getClass_name() {
		return class_name;
	}
	/**
	 * @param class_name the class_name to set
	 */
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	/**
	 * @return the dependent_classes
	 */
	public String getDependent_classes() {
		return dependent_classes.replaceAll(",", " <br>");
	}
	/**
	 * @param dependent_classes the dependent_classes to set
	 */
	public void setDependent_classes(String dependent_classes) {
		this.dependent_classes = dependent_classes;
	}
}
