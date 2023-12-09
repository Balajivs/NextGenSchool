package com.airwire.nextgenschool.service;

import java.util.List;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;


/**
 * @author Balaji Sambhale
 * @date 28/03/2021
 * The Interface EducationYearService.
 */
public interface EducationYearService {

	/**
	 * Creates the.
	 *
	 * @param educationalYearMstDto the educational year mst dto
	 * @throws Exception the exception
	 */
	void create(EducationalYearMstDto educationalYearMstDto) throws Exception;

	/**
	 * Gets the educational year mst by id.
	 *
	 * @param id the id
	 * @return the educational year mst by id
	 * @throws Exception the exception
	 */
      EducationalYearMstDto getEducationalYearMstById(Long id) throws Exception;

	/**
	 * Gets the all education year by id.
	 *
	 * @param schoolId the school id
	 * @return the all education year by id
	 * @throws Exception the exception
	 */
	
	public List<EducationalYearMstDto> getAllEducationYearBySchoolId(Long schoolId) throws Exception;

	/**
	 * Gets the educational year mst dto all list.
	 *
	 * @param educationalYearMstDto the educational year mst dto
	 * @return the educational year mst dto all list
	 * @throws Exception the exception
	 */
	

	
	public void updateEducationalYearMst(EducationalYearMstDto educationalYearMstDto) throws Exception;

	
	/**
	 * Active deactive educational year mst.
	 *
	 * @param educationalYearMstDto the educational year mst dto
	 * @throws Exception the exception
	 */
	public void activeDeactiveEducationalYearMst(EducationalYearMstDto educationalYearMstDto) throws Exception; 

}
