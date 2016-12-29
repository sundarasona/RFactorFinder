package com.lmig.controller;

import org.jboss.tattletale.Main;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmig.model.ApplicationDetails;
import com.lmig.repositories.ApiClassRepository;
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
	ApiClassRepository apiClassRepository;
	private ApplicationDetails appDetails;
	private String applicationName;
	
	@Autowired
	public OverviewController(ApplicationDetails appDetails, ApiRepository apiRepository,
			OverviewRepository overviewRepository, RFactorRepository rFactorRepository, 
			DepJarRepository depJarRepository, DepClassRepository depClassRepository,
			ApiClassRepository apiClassRepository) {
		this.overviewRepository =overviewRepository;
		this.rFactorRepository = rFactorRepository;
		this.apiRepository = apiRepository;
		this.depJarRepository = depJarRepository;
		this.depClassRepository = depClassRepository;
		this.appDetails = appDetails;
		this.apiClassRepository = apiClassRepository;
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

	@RequestMapping(value="/process", method = RequestMethod.POST)
	public String process(@RequestParam(value="packagename", required=true) String packagename, Model model) {
		this.applicationName=appDetails.getApplicationName();
		if(packagename.length()>0){
			appDetails.setApplicationPackage(packagename);
			this.applicationName=this.applicationName + " : " + appDetails.getApplicationPackage();
		}

		Main main = new Main();
		try {
			main.process(appDetails.getApplicationPath().toFile().toURI().toURL().getFile(), "./output", appDetails.getApplicationPackage());
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("appname", this.applicationName);
		model.addAttribute("overviewItems", overviewRepository.findAll());
		return "overview";
	}
	
	@RequestMapping(value = "/apiclasses", method = RequestMethod.GET)
	public String listApiClasses(Model model,@RequestParam("apiName") String apiName){
		model.addAttribute("appname", this.applicationName);
		model.addAttribute("depClasses",apiClassRepository.getClass_name(apiName)); 
		System.out.println("Returning Api Classes:");
		return "apiclasses";
	}
	
	@RequestMapping(value = "/getstarted", method = RequestMethod.GET)
	public String getstarted(Model model){
		model.addAttribute("message", "");
		model.addAttribute("warningmessage", "");
		return "getstarted";
	}
	
}
