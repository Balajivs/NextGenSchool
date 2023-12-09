package com.airwire.nextgenschool.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import com.airwire.nextgenschool.model.EducationalYearMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.repository.EducationalYearMstRepository;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.service.EducationYearService;

/**
 * @author Balaji Sambhale
 * @date 28/03/2021
 * The Class EducationYearServiceImpl.
 */
@Service
public class EducationYearServiceImpl implements EducationYearService {

	/** The educational year mst repository. */
	@Autowired
	EducationalYearMstRepository educationalYearMstRepository;

	/** The school repository. */
	@Autowired
	SchoolRepository schoolRepository;

	@Override
	public void create(EducationalYearMstDto educationalYearMstDto) throws Exception {
		if (educationalYearMstDto != null) {
			Long schoolId = educationalYearMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if (school != null) {
				EducationalYearMst educationalYearMst = new EducationalYearMst();
				educationalYearMst.setDescription(educationalYearMstDto.getDescription());
				educationalYearMst.setCurrentYear(educationalYearMstDto.isCurrentYear());
				educationalYearMst.setSchool(school);
				educationalYearMst.setActive(true);
				educationalYearMstRepository.save(educationalYearMst);
			} else {
				throw new Exception("School Not Found");
			}

		}

	}

	@Override
	public void updateEducationalYearMst(EducationalYearMstDto educationalYearMstDto) throws Exception {
		if (educationalYearMstDto != null) {
			Long schoolId = educationalYearMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if (educationalYearMstDto.getId() >= 0) {
				EducationalYearMst educationalYearMst = educationalYearMstRepository.getEducationalYearMstById(educationalYearMstDto.getId(),true);
				educationalYearMst.setDescription(educationalYearMstDto.getDescription());
				educationalYearMst.setCurrentYear(educationalYearMstDto.isCurrentYear());
				educationalYearMst.setActive(educationalYearMstDto.isActive());
				educationalYearMstRepository.save(educationalYearMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}

	}


	@Override
	public EducationalYearMstDto getEducationalYearMstById(Long id) {
		EducationalYearMst educationalYearMst = educationalYearMstRepository.getEducationalYearMstById(id, true);
		return (educationalYearMst != null) ? educationalYearMstMapper(educationalYearMst) : null;
	}

	@Override
	public List<EducationalYearMstDto> getAllEducationYearBySchoolId(Long schoolId) throws Exception {

		List<EducationalYearMst> educationalYearMstList = educationalYearMstRepository
				.getEducationalYearMstBySchoolId(schoolId, true);
		List<EducationalYearMstDto> educationalYearMstDtoList = new ArrayList<EducationalYearMstDto>();
		if (educationalYearMstList != null && educationalYearMstList.size() > 0) {
			educationalYearMstList.stream().forEach(educationalYearMst -> {
				educationalYearMstDtoList.add(educationalYearMstMapper(educationalYearMst));
			});
		} else {
			throw new Exception("Specified School doesnt have any education year configured");
		}

		return educationalYearMstDtoList;
	}

	@Override
	public void activeDeactiveEducationalYearMst(EducationalYearMstDto educationalYearMstDto) throws Exception {
		if (educationalYearMstDto != null) {
			Long schoolId = educationalYearMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if (educationalYearMstDto.getId() >= 0) {
				EducationalYearMst educationalYearMst = educationalYearMstRepository.getEducationalYearMstById(educationalYearMstDto.getId(),true);
				educationalYearMst.setActive(educationalYearMstDto.isActive());
				educationalYearMstRepository.save(educationalYearMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}

	}
	public EducationalYearMstDto educationalYearMstMapper(EducationalYearMst educationalYearMst) {
		EducationalYearMstDto educationalYearMstDto = new EducationalYearMstDto();
		educationalYearMstDto.setId(educationalYearMst.getId());
		educationalYearMstDto.setActive(educationalYearMst.isActive());
		educationalYearMstDto.setCurrentYear(educationalYearMst.isCurrentYear());
		educationalYearMstDto.setDescription(educationalYearMst.getDescription());
		if (educationalYearMst.getSchool() != null) {
			educationalYearMstDto.setSchoolId(educationalYearMst.getSchool().getId());
		}
		return educationalYearMstDto;
	}
}
