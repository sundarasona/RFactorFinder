package com.lmig.controller;

import java.net.MalformedURLException;
import java.sql.SQLException;

import org.jboss.tattletale.Main;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmig.model.ApplicationDetails;
import com.lmig.repositories.ApiRepository;
import com.lmig.repositories.DepClassRepository;
import com.lmig.repositories.DepJarRepository;
import com.lmig.repositories.OverviewRepository;
import com.lmig.repositories.RFactorRepository;
import com.lmig.storage.service.StorageProperties;

@Controller
public class OverviewController {

	ApiRepository apiRepository;
	OverviewRepository overviewRepository;
	RFactorRepository rFactorRepository;
	DepJarRepository depJarRepository;
	DepClassRepository depClassRepository;
	StorageProperties properties;
	private ApplicationDetails appDetails;
	private String applicationName;
	
	@Autowired
	public OverviewController(ApplicationDetails appDetails, ApiRepository apiRepository, OverviewRepository overviewRepository, RFactorRepository rFactorRepository, DepJarRepository depJarRepository, DepClassRepository depClassRepository) {
		this.overviewRepository =overviewRepository;
		this.rFactorRepository = rFactorRepository;
		this.apiRepository = apiRepository;
		this.depJarRepository = depJarRepository;
		this.depClassRepository = depClassRepository;
		this.appDetails = appDetails;
	}

	@RequestMapping(value = "/overview", method = RequestMethod.GET)
	public String overview(Model model){
		model.addAttribute("overviewItems", overviewRepository.findAll());        
		model.addAttribute("appname", this.applicationName);
		return "overview";
	}

	@RequestMapping(value = "/depJars", method = RequestMethod.GET)
	public String depJars(Model model){
		model.addAttribute("appname", this.applicationName);
		model.addAttribute("depJars", depJarRepository.findAll());
		return "depjars";
	}
	
	@RequestMapping(value = "/depClasses", method = RequestMethod.GET)
	public String depClasses(Model model){
		model.addAttribute("appname", this.applicationName);
		model.addAttribute("depClasses", depClassRepository.findAll());
		return "depclasses";
	}
	
	@RequestMapping(value = "/getRFactor", method = RequestMethod.GET)
	public String getRFactor(Model model){
		model.addAttribute("RFactors", rFactorRepository.findAll());        
		model.addAttribute("appname", this.applicationName);
		return "rfactor";
	}

	@RequestMapping(value = "/apis", method = RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("appname", this.applicationName);
		model.addAttribute("apis", apiRepository.findAll());        
		System.out.println("Returning apis:");
		return "apis";
	}

	@RequestMapping(value="/overview", method = RequestMethod.POST)
	public String overview(@RequestParam(value="packagename", required=true) String packagename, Model model) {
		this.applicationName=appDetails.getApplicationName();
		if(packagename.length()>0){
			appDetails.setApplicationPackage(packagename);
			this.applicationName=this.applicationName + " : " + appDetails.getApplicationPackage();
		}
		
		model.addAttribute("appname", this.applicationName);
		model.addAttribute("overviewItems", overviewRepository.findAll());

		Main main = new Main();
		try {
			main.process(appDetails.getApplicationPath().toFile().toURI().toURL().getFile(), "./output", appDetails.getApplicationPackage());
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "overview";
	}
	
	@RequestMapping(value = "/getstarted", method = RequestMethod.GET)
	public String getstarted(Model model){
		model.addAttribute("message", "");
		model.addAttribute("warningmessage", "");
		return "getstarted";
	}
}
