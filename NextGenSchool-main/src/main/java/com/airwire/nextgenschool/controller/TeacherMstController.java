package com.airwire.nextgenschool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.TeacherMstDto;
import com.airwire.nextgenschool.service.TeacherMstService;

@RestController
public class TeacherMstController {

	@Autowired
	private TeacherMstService teacherMstService;

	@PostMapping("createTeacherMaster")
	public void createTeacherMaster(@RequestBody TeacherMstDto teacherMstDto) throws Exception {
		teacherMstService.createTeacherMaster(teacherMstDto);
	}

	@GetMapping("/getTeacherMaster/{id}")
	public @ResponseBody TeacherMstDto getTeacherMstById(@PathVariable(value = "id") Long id) throws Exception {
		return teacherMstService.getTeacherMstById(id);
	}

	@PostMapping(value = "/updateTeacherMaster")
	public void updateTeacherMaster(@RequestBody TeacherMstDto teacherMstDto) throws Exception {
		teacherMstService.updateTeacherMstService(teacherMstDto);
	}

}
