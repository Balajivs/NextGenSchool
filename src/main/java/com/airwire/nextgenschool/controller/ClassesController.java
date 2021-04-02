package com.airwire.nextgenschool.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.ClassesMstDto;
import com.airwire.nextgenschool.service.ClassesService;

@RestController
public class ClassesController {

	@Autowired
	ClassesService classesService;

	@PostMapping("/createClasses")
	public void createClasses(@RequestBody ClassesMstDto classesMstDto, Principal principal) throws Exception {
		classesService.createClasses(classesMstDto); 
	}

	@GetMapping("/getClassesBySchoolId/{schoolId}") 
	public @ResponseBody List<ClassesMstDto> getClassesBySchoolId(@PathVariable(value = "schoolId") Long schoolId, Principal principal) throws Exception{ 
		List<ClassesMstDto> list =  classesService.getClassesBySchoolId(schoolId);
		return list;
	}

	@PutMapping("/updateClasses") 
	public void updateClasses(@RequestBody ClassesMstDto classesMstDto, Principal principal) throws Exception{
		classesService.updateClasses(classesMstDto);
	}
	
	@DeleteMapping("/activeDeactiveClasses")  
	public void activeDeactiveClasses(@RequestBody ClassesMstDto classesMstDto, Principal principal) throws Exception {
		classesService.activeDeactiveClasses(classesMstDto);
	}

}
