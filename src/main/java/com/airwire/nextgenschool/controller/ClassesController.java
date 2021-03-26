package com.airwire.nextgenschool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.ClassesMstDto;
import com.airwire.nextgenschool.service.ClassesService;

@RestController
public class ClassesController {

	@Autowired
	ClassesService classesService;

	
	@RequestMapping(value = "createClasses", method = RequestMethod.POST)
	public void create(@RequestBody ClassesMstDto classesMstDto) throws Exception {
		classesService.create(classesMstDto);
	}
	
	//edit
	
	
	//delete
	
	//getbyid
	
	//getallbyschoolid


}
