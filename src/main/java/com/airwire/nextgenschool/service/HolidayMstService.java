package com.airwire.nextgenschool.service;

import com.airwire.nextgenschool.dto.HolidayMstDto;

public interface HolidayMstService {

	void createHolidayMaster(HolidayMstDto holidayMstDto) throws Exception;

	HolidayMstDto getHolidayMasterById(Long id)throws Exception;
	

}
