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

import com.airwire.nextgenschool.dto.DivisionMstDto;
import com.airwire.nextgenschool.service.DivisionService;

@RestController
public class DivisionController {

	@Autowired
	DivisionService divisionService;
	
	@PostMapping("/createDivision")
	public void createDicision(@RequestBody DivisionMstDto divisionMstDto, Principal Principal) throws Exception {
		divisionService.createDivision(divisionMstDto);
	}
	
	@GetMapping("/getDivisionByClassId/{classesId}")
	public @ResponseBody List<DivisionMstDto> getDivisionByClassId(@PathVariable(value = "classesId") Long classesId, Principal principal) throws Exception{
		List<DivisionMstDto> list =  divisionService.getDivisionByClassId(classesId);
		return list;
	}
	
	@PutMapping("/updateDivision")
	public void updateDivision(@RequestBody DivisionMstDto divisionMstDto, Principal principal) throws Exception{
		divisionService.updateDivision(divisionMstDto);
	}
	
	@DeleteMapping("/activeDeactiveDivision")
	public void activeDeactiveDivision(@RequestBody DivisionMstDto divisionMstDto, Principal principal) throws Exception {
		divisionService.activeDeactiveDivision(divisionMstDto);
	}
}
