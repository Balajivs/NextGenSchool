package com.airwire.nextgenschool.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.HolidayMstDto;
import com.airwire.nextgenschool.dto.TeacherMstDto;
import com.airwire.nextgenschool.model.HolidayMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.model.TeacherMst;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.repository.TeacherMstRepository;
import com.airwire.nextgenschool.service.TeacherMstService;

@Service
public class TeacherMstServiceImpl implements TeacherMstService {

	@Autowired
	private TeacherMstRepository teacherMstRepository;

	@Autowired
	private SchoolRepository schoolRepository;

	@Override
	public void createTeacherMaster(TeacherMstDto teacherMstDto) throws Exception {
		Long schoolId = null;
		if (teacherMstDto != null){
			schoolId = teacherMstDto.getSchool();
			School school = schoolRepository.getSchoolById(schoolId);
		if (school != null) {
			TeacherMst teacherMst = new TeacherMst();
			teacherMst.setFirstName(teacherMstDto.getFirstName());
			teacherMst.setMiddleName(teacherMstDto.getMiddleName());
			teacherMst.setLastName(teacherMstDto.getLastName());
			teacherMst.setMotherName(teacherMstDto.getMotherName());
			teacherMst.setNationality(teacherMstDto.getNationality());
			teacherMst.setMotherTongue(teacherMstDto.getMotherTongue());
			teacherMst.setReligion(teacherMstDto.getReligion());
			teacherMst.setCast(teacherMstDto.getCast());
			teacherMst.setSubCast(teacherMstDto.getSubCast());
			teacherMst.setCastCategory(teacherMstDto.getCastCategory());
			teacherMst.setMinority(teacherMstDto.getMinority());
			teacherMst.setBirthPlace(teacherMstDto.getBirthPlace());
			teacherMst.setBirthTahshil(teacherMstDto.getBirthTahshil());
			teacherMst.setBirthDistrict(teacherMstDto.getBirthDistrict());
			teacherMst.setBirthState(teacherMstDto.getBirthState());
			teacherMst.setBirthCountry(teacherMstDto.getBirthCountry());
			teacherMst.setBirthDate(teacherMstDto.getBirthDate());
			teacherMst.setGender(teacherMstDto.getGender());
			teacherMst.setQualification(teacherMstDto.getQualification());
			teacherMst.setJoiningDate(teacherMstDto.getJoiningDate());
			teacherMst.setRemarks(teacherMstDto.getRemarks());
			teacherMst.setActive(true);
			teacherMst.setSchool(school);
			teacherMstRepository.save(teacherMst);
		} else {
			throw new Exception("Teacher does not found");
		}
		}

	}

	@Override
	public TeacherMstDto getTeacherMstById(Long id) {
		TeacherMstDto teacherMstDto = new TeacherMstDto();
		TeacherMst teacherMst = teacherMstRepository.getTeacherMstById(id, true);
		if (teacherMst.getSchool() != null) {
			teacherMstDto.setSchool(teacherMst.getSchool().getId());
		}
		teacherMstDto.setActive(teacherMst.getActive());
		
		teacherMstDto.setFirstName(teacherMst.getFirstName());
		teacherMstDto.setMiddleName(teacherMst.getMiddleName());
		teacherMstDto.setLastName(teacherMst.getLastName());
		teacherMstDto.setMotherName(teacherMst.getMotherName());
		teacherMstDto.setNationality(teacherMst.getNationality());
		teacherMstDto.setMotherTongue(teacherMst.getMotherTongue());
		teacherMstDto.setReligion(teacherMst.getReligion());
		teacherMstDto.setCast(teacherMst.getCast());
		teacherMstDto.setSubCast(teacherMst.getSubCast());
		teacherMstDto.setCastCategory(teacherMst.getCastCategory());
		teacherMstDto.setMinority(teacherMst.getMinority());
		teacherMstDto.setBirthPlace(teacherMst.getBirthPlace());
		teacherMstDto.setBirthTahshil(teacherMst.getBirthTahshil());
		teacherMstDto.setBirthDistrict(teacherMst.getBirthDistrict());
		teacherMstDto.setBirthState(teacherMst.getBirthState());
		teacherMstDto.setBirthCountry(teacherMst.getBirthCountry());
		teacherMstDto.setBirthDate(teacherMst.getBirthDate());
		teacherMstDto.setGender(teacherMst.getGender());
		teacherMstDto.setQualification(teacherMst.getQualification());
		teacherMstDto.setJoiningDate(teacherMst.getJoiningDate());
		teacherMstDto.setRemarks(teacherMst.getRemarks());
		teacherMstDto.setActive(true);
		return teacherMstDto;
	}

	@Override
	public void updateTeacherMstService(TeacherMstDto teacherMstDto) throws Exception {
		if (teacherMstDto != null) {
			Long schoolId = teacherMstDto.getSchool();
			School school = schoolRepository.getSchoolById(schoolId);
			if (teacherMstDto.getId() >= 0) {
				TeacherMst teacherMst = teacherMstRepository.getTeacherMstById(teacherMstDto.getId(), true);
				teacherMst.setFirstName(teacherMstDto.getFirstName());
				teacherMst.setMiddleName(teacherMstDto.getMiddleName());
				teacherMst.setLastName(teacherMstDto.getLastName());
				teacherMst.setMotherName(teacherMstDto.getMotherName());
				teacherMst.setNationality(teacherMstDto.getNationality());
				teacherMst.setMotherTongue(teacherMstDto.getMotherTongue());
				teacherMst.setReligion(teacherMstDto.getReligion());
				teacherMst.setCast(teacherMstDto.getCast());
				teacherMst.setSubCast(teacherMstDto.getSubCast());
				teacherMst.setCastCategory(teacherMstDto.getCastCategory());
				teacherMst.setMinority(teacherMstDto.getMinority());
				teacherMst.setBirthPlace(teacherMstDto.getBirthPlace());
				teacherMst.setBirthTahshil(teacherMstDto.getBirthTahshil());
				teacherMst.setBirthDistrict(teacherMstDto.getBirthDistrict());
				teacherMst.setBirthState(teacherMstDto.getBirthState());
				teacherMst.setBirthCountry(teacherMstDto.getBirthCountry());
				teacherMst.setBirthDate(teacherMstDto.getBirthDate());
				teacherMst.setGender(teacherMstDto.getGender());
				teacherMst.setQualification(teacherMstDto.getQualification());
				teacherMst.setJoiningDate(teacherMstDto.getJoiningDate());
				teacherMst.setRemarks(teacherMstDto.getRemarks());
				teacherMst.setActive(true);
				teacherMst.setSchool(school);
				teacherMstRepository.save(teacherMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}

	}

}
