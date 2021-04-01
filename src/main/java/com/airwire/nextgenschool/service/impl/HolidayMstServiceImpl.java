package com.airwire.nextgenschool.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.HolidayMstDto;
import com.airwire.nextgenschool.model.HolidayMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.repository.HolidayMstRepository;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.service.HolidayMstService;

/**
 * @author Balaji Sambhale
 * @date 01/04/2021
 * The Class HolidayMstServiceImpl.
 */
@Service
public class HolidayMstServiceImpl implements HolidayMstService{

	
	
	/** The holiday mst repository. */
	@Autowired
	private HolidayMstRepository holidayMstRepository;
	
	/** The school repository. */
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

	
	@Override
	public void updateHolidayMaster(HolidayMstDto holidayMstDto) throws Exception {
		if (holidayMstDto != null) {
			Long schoolId = holidayMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if (holidayMstDto.getId() >= 0) {
				HolidayMst holidayMst = holidayMstRepository.getHolidayMasterById(holidayMstDto.getId(), true);
				holidayMst.setDescription(holidayMstDto.getDescription());
				holidayMst.setType(holidayMstDto.getType());
				holidayMst.setActive(holidayMstDto.getActive());
				holidayMstRepository.save(holidayMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}
	}

	/**
	 * Holiday mst mapper.
	 *
	 * @param holidayMst the holiday mst
	 * @return the holiday mst dto
	 */
	public HolidayMstDto holidayMstMapper(HolidayMst holidayMst) {
		HolidayMstDto holidayMstDto = new HolidayMstDto();
		holidayMstDto.setId(holidayMst.getId());
		holidayMstDto.setActive(holidayMst.getActive());
		holidayMstDto.setType(holidayMst.getType());
		holidayMstDto.setDescription(holidayMst.getDescription());
		if (holidayMst.getSchool() != null) {
			holidayMstDto.setSchoolId(holidayMst.getSchool().getId());
		}
		return holidayMstDto;
	}
	
	
	@Override
	public List<HolidayMstDto> getAllHolidayMstBySchoolId(Long schoolId) throws Exception {

		List<HolidayMst> holidayMstList = holidayMstRepository
				.getHolidayMstBySchoolId(schoolId, true);
		List<HolidayMstDto> holidayMstDtoList = new ArrayList<HolidayMstDto>();
		if (holidayMstList != null && holidayMstList.size() > 0) {
			holidayMstList.stream().forEach(holidayMst -> {
				holidayMstDtoList.add(holidayMstMapper(holidayMst));
			});
		} else {
			throw new Exception("Specified School doesnt have any Holiday year configured");
		}

		return holidayMstDtoList;
	}
}
