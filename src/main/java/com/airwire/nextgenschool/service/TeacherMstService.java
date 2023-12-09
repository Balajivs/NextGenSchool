package com.airwire.nextgenschool.service;

import java.util.List;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import com.airwire.nextgenschool.dto.TeacherMstDto;

/**
 * @author Balaji Sambhale
 * 
 * The Interface TeacherMstService.
 */
public interface TeacherMstService {

	 /**
 	 * Creates the teacher master.
 	 *
 	 * @param teacherMstDto the teacher mst dto
 	 * @throws Exception the exception
 	 */
 	void createTeacherMaster(TeacherMstDto teacherMstDto) throws Exception;

	  /**
  	 * Gets the teacher mst by id.
  	 *
  	 * @param id the id
  	 * @return the teacher mst by id
  	 */
  	TeacherMstDto getTeacherMstById(Long id);

	  /**
  	 * Update teacher mst service.
  	 *
  	 * @param teacherMstDto the teacher mst dto
  	 * @throws Exception the exception
  	 */
  	void updateTeacherMstService(TeacherMstDto teacherMstDto) throws Exception;
  	
  	public void activeDeactiveTeacherMst(TeacherMstDto teacherMstDto) throws Exception;
  	
  	public List<TeacherMstDto> getAllTeacherMstBySchoolId(Long schoolId) throws Exception;

}
