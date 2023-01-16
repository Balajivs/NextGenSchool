package com.airwire.nextgenschool.service;

import com.airwire.nextgenschool.dto.MiscellaneousMstDto;

/**
 * The Interface MiscellaneousMstService.
 */
public interface MiscellaneousMstService {

	/**
	 * Creates the miscellaneous mst.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	void createMiscellaneousMst(MiscellaneousMstDto miscellaneousMstDto) throws Exception;
	
	
	/**
	 * Gets the miscellaneous master by id.
	 *
	 * @param id the id
	 * @return the miscellaneous master by id
	 * @throws Exception the exception
	 */
	public MiscellaneousMstDto getMiscellaneousMasterById(Long id) throws Exception;
	
	/**
	 * Update miscellaneous master.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	public void updateMiscellaneousMaster(MiscellaneousMstDto miscellaneousMstDto) throws Exception; 
	
	/**
	 * Active deactive miscellaneous mst.
	 *
	 * @param miscellaneousMstDto the miscellaneous mst dto
	 * @throws Exception the exception
	 */
	public void activeDeactiveMiscellaneousMst(MiscellaneousMstDto miscellaneousMstDto) throws Exception;

}
