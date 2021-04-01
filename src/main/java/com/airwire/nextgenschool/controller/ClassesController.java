package com.airwire.nextgenschool.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.ClassesMstDto;
import com.airwire.nextgenschool.model.ClassMst;
import com.airwire.nextgenschool.service.ClassesService;

@RestController
public class ClassesController {

	@Autowired
	ClassesService classesService;

	@PostMapping("/createClasses")
	public void createClasses(@RequestBody ClassesMstDto classesMstDto, Principal principal) throws Exception {
		classesService.createClasses(classesMstDto); 
	}

	@GetMapping("/getClassesBySchoolId/{id}") 
	public void getClassesBySchoolId(@PathVariable Long id, Principal principal){ 
	    classesService.getClassesBySchoolId(id);
	}

	@PutMapping("/updateClasses") 
	public void updateClasses(@RequestBody ClassMst classMst, Principal principal){
		classesService.updateClasses(classMst);
	}
	
	@DeleteMapping("/deleteClasses/{id}")  
	public String deleteClasses(@PathVariable Long id, Principal principal) {
		return classesService.deleteClasses(id);
	}

}
