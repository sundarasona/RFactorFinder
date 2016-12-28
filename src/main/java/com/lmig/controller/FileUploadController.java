package com.lmig.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lmig.model.ApplicationDetails;
import com.lmig.storage.service.StorageFileNotFoundException;
import com.lmig.storage.service.StorageService;

@Controller
public class FileUploadController {

	private final StorageService storageService;
	private ApplicationDetails appDetails;

	@Autowired
	public FileUploadController(StorageService storageService, ApplicationDetails appDetails) {
		this.storageService = storageService;
		this.appDetails = appDetails;
	}

	@GetMapping("/")
	public String listUploadedFiles(Model model) throws IOException {

		/*model.addAttribute("files", storageService
                .loadAll()
                .map(path ->
                        MvcUriComponentsBuilder
                                .fromMethodName(FileUploadController.class, "serveFile", path.getFileName().toString())
                                .build().toString())
                .collect(Collectors.toList()));*/

		return "/getstarted";
	}

	@GetMapping("/files/{filename:.+}")
	@ResponseBody
	public ResponseEntity<Resource> serveFile(@PathVariable String filename) {

		Resource file = storageService.loadAsResource(filename);
		return ResponseEntity
				.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+file.getFilename()+"\"")
				.body(file);
	}

	@PostMapping("/")
	public String handleFileUpload(@RequestParam(value="appname", required=true) MultipartFile file,
			RedirectAttributes redirectAttributes) { 
		if(file.getOriginalFilename().length() > 4){
			storageService.store(file);
			appDetails.setApplicationName(file.getOriginalFilename().substring(0, file.getOriginalFilename().length() - 4));
			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded " + file.getOriginalFilename() + "!");
		} else {
			redirectAttributes.addFlashAttribute("warningmessage",
					"You should upload application file to proceed!");
		}
		
		return "redirect:/";
	}

	@ExceptionHandler(StorageFileNotFoundException.class)
	public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}

}
