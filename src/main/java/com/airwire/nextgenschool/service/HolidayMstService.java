package com.airwire.nextgenschool.service;

import java.util.List;

import com.airwire.nextgenschool.dto.HolidayMstDto;

/**@author Balaji Sambhale
 * @date 01/04/2021
 * The Interface HolidayMstService.
 */
public interface HolidayMstService {

	/**
	 * Creates the holiday master.
	 *
	 * @param holidayMstDto the holiday mst dto
	 * @throws Exception the exception
	 */
	void createHolidayMaster(HolidayMstDto holidayMstDto) throws Exception;

	/**
	 * Gets the holiday master by id.
	 *
	 * @param id the id
	 * @return the holiday master by id
	 * @throws Exception the exception
	 */
	HolidayMstDto getHolidayMasterById(Long id)throws Exception;
	
	/**
	 * Update holiday master.
	 *
	 * @param holidayMstDto the holiday mst dto
	 * @throws Exception the exception
	 */
	public void updateHolidayMaster(HolidayMstDto holidayMstDto) throws Exception;

	/**
	 * Gets the all holiday mst by school id.
	 *
	 * @param schoolId the school id
	 * @return the all holiday mst by school id
	 * @throws Exception the exception
	 */
	public List<HolidayMstDto> getAllHolidayMstBySchoolId(Long schoolId) throws Exception;

}
