package com.airwire.nextgenschool.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.HolidayMstDto;
import com.airwire.nextgenschool.model.HolidayMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.repository.HolidayMstRepository;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.service.HolidayMstService;

@Service
public class HolidayMstServiceImpl implements HolidayMstService{

	
	
	@Autowired
	private HolidayMstRepository holidayMstRepository;
	
	@Autowired
	private SchoolRepository schoolRepository;
	
	@Override
	public void createHolidayMaster(HolidayMstDto holidayMstDto) throws Exception {

		if (holidayMstDto != null) {
			Long schoolId = holidayMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if (school != null) {
				HolidayMst holidayMst = new HolidayMst();
				holidayMst.setDescription(holidayMstDto.getDescription());
				holidayMst.setDate(new Date());
				//holidayMst.setEducationalYearMst(educationalYearMst.get);
				holidayMst.setSchool(school);
				holidayMst.setType(holidayMstDto.getType());
				holidayMst.setActive(true);
				holidayMstRepository.save(holidayMst);
			} else {
				throw new Exception("Holiday does not found");
			}

		}

	
		
	}

	@Override
	public HolidayMstDto getHolidayMasterById(Long id) throws Exception {
		
		HolidayMstDto holidayMstDto = new HolidayMstDto();
		HolidayMst holidayMst = holidayMstRepository.getHolidayMasterById(id, true);
		holidayMstDto.setDescription(holidayMst.getDescription());
		holidayMstDto.setType(holidayMst.getType());
		holidayMstDto.setDate(holidayMst.getDate());
		holidayMstDto.setActive(holidayMst.getActive());
		if (holidayMst.getSchool() != null) {
			holidayMstDto.setSchoolId(holidayMst.getSchool().getId());
		}
		
		return holidayMstDto;
	}

}
