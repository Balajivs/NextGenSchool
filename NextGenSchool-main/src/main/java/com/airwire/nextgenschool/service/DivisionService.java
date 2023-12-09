package com.airwire.nextgenschool.service;

import java.util.List;

import com.airwire.nextgenschool.dto.DivisionMstDto;

public interface DivisionService {

	void createDivision(DivisionMstDto divisionMstDto) throws Exception;

	List<DivisionMstDto> getDivisionByClassId(Long id) throws Exception;

	void updateDivision(DivisionMstDto divisionMstDto) throws Exception;

	void activeDeactiveDivision(DivisionMstDto divisionMstDto) throws Exception;

}
