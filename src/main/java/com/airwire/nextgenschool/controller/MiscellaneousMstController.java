package com.airwire.nextgenschool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.airwire.nextgenschool.dto.MiscellaneousMstDto;
import com.airwire.nextgenschool.service.MiscellaneousMstService;

/**
 * The Class MiscellaneousMstController.
 */
@RestController
public class MiscellaneousMstController {

	/** The miscellaneous mst service. */
	@Autowired
	private MiscellaneousMstService miscellaneousMstService;

	
	/**
	 * Creates the miscellaneous mst.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	@RequestMapping(value = "createMiscellaneousMst", method = RequestMethod.POST)
	public void createMiscellaneousMst(@RequestBody MiscellaneousMstDto miscellaneousMstDto) throws Exception {
		miscellaneousMstService.createMiscellaneousMst(miscellaneousMstDto);
	}

	
	/**
	 * Gets the miscellaneous by id.
	 *
	 * @param id the id
	 * @return the miscellaneous by id
	 * @throws Exception the exception
	 */
	@GetMapping("/getMiscellaneousMaster/{id}")
	public @ResponseBody MiscellaneousMstDto getMiscellaneousById(@PathVariable(value = "id") Long id)
			throws Exception {
		return miscellaneousMstService.getMiscellaneousMasterById(id);
	}

	
	/**
	 * Update miscellaneous master.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	@PostMapping(value = "/updateMiscellaneousMaster")
	public void updateMiscellaneousMaster(@RequestBody MiscellaneousMstDto miscellaneousMstDto) throws Exception {
		miscellaneousMstService.updateMiscellaneousMaster(miscellaneousMstDto);
	}

	
	/**
	 * Active deactive education year.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	@RequestMapping(value = "/activeDeactiveMiscellaneousMaster", method = RequestMethod.POST)
	public void activeDeactiveEducationYear(@RequestBody MiscellaneousMstDto miscellaneousMstDto) throws Exception {
		miscellaneousMstService.activeDeactiveMiscellaneousMst(miscellaneousMstDto);
	}

}
