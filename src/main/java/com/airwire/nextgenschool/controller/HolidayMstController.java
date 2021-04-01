package com.airwire.nextgenschool.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.HolidayMstDto;
import com.airwire.nextgenschool.service.HolidayMstService;

// TODO: Auto-generated Javadoc
/**       
 * @author Balaji Sambhale
 * @date 29/03/2021
 * The Class EducationYearController.
 */
@RestController
public class HolidayMstController {

	
	/** The holiday mst service. */
	@Autowired
	private HolidayMstService holidayMstService;
	
	 /**
 	 * Creates the holiday master.
 	 *
 	 * @param holidayMstDto the holiday mst dto
 	 * @throws Exception the exception
 	 */
 	@PostMapping("createHolidayMaster")
	    public void createHolidayMaster(@RequestBody HolidayMstDto holidayMstDto) throws Exception {
		 holidayMstService.createHolidayMaster(holidayMstDto);
	    }
	 
	 /**
 	 * Gets the holiday master by id.
 	 *
 	 * @param id the id
 	 * @return the holiday master by id
 	 * @throws Exception the exception
 	 */
 	@GetMapping("/getHolidayMaster/{id}")
	    public @ResponseBody HolidayMstDto getHolidayMasterById(@PathVariable(value="id") Long id) throws Exception {
	    	return holidayMstService.getHolidayMasterById(id);
	     
	    }
 	
 	/**
	  * Update holiday master.
	  *
	  * @param holidayMstDto the holiday mst dto
	  * @throws Exception the exception
	  */
	 @PostMapping(value = "/updateHolidayMst")
     public void updateHolidayMaster(@RequestBody HolidayMstDto holidayMstDto) throws Exception {
 		holidayMstService.updateHolidayMaster(holidayMstDto);
     }
 	
 	/**
	  * Gets the all holiday mst by id.
	  *
	  * @param schoolId the school id
	  * @return the all holiday mst by id
	  * @throws Exception the exception
	  */
	 @GetMapping("/getAllHolidayMst/{schoolId}")
	public @ResponseBody List<HolidayMstDto> getAllHolidayMstById(
			@PathVariable(value = "schoolId") Long schoolId) throws Exception {
		List<HolidayMstDto> holidayMstList = holidayMstService.getAllHolidayMstBySchoolId(schoolId);
		return holidayMstList;

	}
}
