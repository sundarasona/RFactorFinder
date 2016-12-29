/*
 * Copyright (C) 2016, Liberty Mutual Group
 *
 * Created on Dec 28, 2016
 */

package com.lmig.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lmig.model.ApplicationDetails;
import com.org.lm.RFReportingService.IRFReport;
import com.org.lm.RFReportingService.RFReportExcel;
import com.org.lm.RFReportingService.RFReportWord;
import com.org.lm.RFReportingService.RFXMLCreator;

/**
 * @author n0213628
 *
 */
@Controller
public class ExcelReportController {
	/**
     * Size of a byte buffer to read/write file
     */
    private static final int BUFFER_SIZE = 4096;

    @Autowired
    private ApplicationDetails applicationDetails;
	@RequestMapping(value = "/excelReport", method = RequestMethod.GET)
	public void excelReport(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		RFXMLCreator rfxmlCreator = new RFXMLCreator();
		File xmlFile = new File("Output.xml");
		rfxmlCreator.CreateXML(applicationDetails.getApplicationName(), xmlFile.getPath());
		IRFReport irfReport = new RFReportExcel();
		File excelFile = new File("RReport.doc");
		irfReport.IntializeReprot(xmlFile.getPath(), excelFile.getPath());
		OutputStream outStreamReport = irfReport.ProcessRequest();
		if(null != outStreamReport) {
			outStreamReport.close();
		}

		
		response.setContentType("application/vnd.ms-excel");
		response.addHeader("Content-Disposition", "attachment; filename="
		          + applicationDetails.getApplicationName() + ".xls");
		InputStream is = new FileInputStream(excelFile);
		// get output stream of the response
		OutputStream outStream = response.getOutputStream();
		
		byte[] buffer = new byte[BUFFER_SIZE];
		int bytesRead = -1;

		// write bytes read from the input stream into the output stream
		while ((bytesRead = is.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}
		is.close();
		outStream.close();

	}
}
