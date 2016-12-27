/*
 * Copyright (C) 2016, Liberty Mutual Group
 *
 * Created on Dec 27, 2016
 */

package com.lmig.model;

import java.nio.file.Path;

import org.springframework.stereotype.Component;

/**
 * @author n0158567
 *
 */
@Component
public class ApplicationDetails {
	private String applicationName;
	private String applicationPackage;
	private Path applicationPath;
	/**
	 * @return the applicationName
	 */
	public String getApplicationName() {
		return applicationName;
	}
	/**
	 * @param applicationName the applicationName to set
	 */
	public void setApplicationName(String applicationName) {
		this.applicationName = applicationName;
	}
	/**
	 * @return the applicationPackage
	 */
	public String getApplicationPackage() {
		return applicationPackage;
	}
	/**
	 * @param applicationPackage the applicationPackage to set
	 */
	public void setApplicationPackage(String applicationPackage) {
		this.applicationPackage = applicationPackage;
	}
	/**
	 * @return the applicationPath
	 */
	public Path getApplicationPath() {
		return applicationPath;
	}
	/**
	 * @param applicationPath the applicationPath to set
	 */
	public void setApplicationPath(Path applicationPath) {
		this.applicationPath = applicationPath;
	}

}
