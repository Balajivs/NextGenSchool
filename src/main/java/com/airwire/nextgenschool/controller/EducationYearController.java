package com.airwire.nextgenschool.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import com.airwire.nextgenschool.repository.EducationalYearMstRepository;
import com.airwire.nextgenschool.service.EducationYearService;

/**       
 * @author Balaji Sambhale
 * @date 28/03/2021
 * The Class EducationYearController.
 */
@RestController
public class EducationYearController {

    /** The education year service. */
    @Autowired
    EducationYearService educationYearService;
    
    /** The educational year mst repository. */
    @Autowired
    EducationalYearMstRepository educationalYearMstRepository;

    /**
     * Creates the.
     *
     * @param educationalYearMstDto the educational year mst dto
     * @throws Exception the exception
     */
    @RequestMapping(value = "createEducationYear", method = RequestMethod.POST)
    public void create(@RequestBody EducationalYearMstDto educationalYearMstDto) throws Exception {
        educationYearService.create(educationalYearMstDto);
    }
    
	/**
	 * Gets the all education year by id.
	 *
	 * @param schoolId the school id
	 * @return the all education year by id
	 * @throws Exception the exception
	 */
	@GetMapping("/getAllEducationYear/{schoolId}")
	public @ResponseBody List<EducationalYearMstDto> getAllEducationYearById(
			@PathVariable(value = "schoolId") Long schoolId) throws Exception {
		List<EducationalYearMstDto> educationalYearMstDtoList = educationYearService.getAllEducationYearBySchoolId(schoolId);
		return educationalYearMstDtoList;

	}
    
    /**
     * Gets the education year by id.
     *
     * @param id the id
     * @return the education year by id
     * @throws Exception the exception
     */
    @GetMapping("/getEducationYear/{id}")
    public @ResponseBody EducationalYearMstDto getEducationYearById(@PathVariable(value="id") Long id) throws Exception {
    	return educationYearService.getEducationalYearMstById(id);
     
    }
    
    /**
     * Update education year.
     *
     * @param educationalYearMstDto the educational year mst dto
     * @throws Exception the exception
     */
    @RequestMapping(value = "/updateEducationYear", method = RequestMethod.POST)
    public void updateEducationYear(@RequestBody EducationalYearMstDto educationalYearMstDto) throws Exception {
        educationYearService.updateEducationalYearMst(educationalYearMstDto);
    }
    
    /**
     * Active deactive education year.
     *
     * @param educationalYearMstDto the educational year mst dto
     * @throws Exception the exception
     */
    @RequestMapping(value = "/activeDeactiveEducationYear", method = RequestMethod.POST)
    public void activeDeactiveEducationYear(@RequestBody EducationalYearMstDto educationalYearMstDto) throws Exception {
        educationYearService.activeDeactiveEducationalYearMst(educationalYearMstDto);
    }
}
