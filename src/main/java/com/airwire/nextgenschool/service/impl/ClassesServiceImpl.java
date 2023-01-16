package com.airwire.nextgenschool.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.ClassesMstDto;
import com.airwire.nextgenschool.model.ClassMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.repository.ClassesMstRepository;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.service.ClassesService;

@Service
public class ClassesServiceImpl implements ClassesService {

	@Autowired
	ClassesMstRepository classesMstRepository;

	@Autowired
	SchoolRepository schoolRepository;

	@Override 
	public void createClasses(ClassesMstDto classesMstDto) throws Exception {

		if(classesMstDto!=null){
			Long schoolId = classesMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if(school!=null){
				ClassMst classMst = new ClassMst();
				classMst.setTitle(classesMstDto.getTitle());
				classMst.setActive(true);
				classMst.setSchool(school);
				classesMstRepository.save(classMst);
			}else{
				throw new Exception("Class Not Found");
			}
		}
	}

	@Override
	public List<ClassesMstDto> getClassesBySchoolId(Long schoolId) throws Exception {

		List<ClassMst> list = classesMstRepository.getClassesBySchoolId(schoolId, true);
		List<ClassesMstDto> classesMstDtoList = new ArrayList<ClassesMstDto>();
		if (list != null && list.size() > 0) {
			list.stream().forEach(classMst -> {
				classesMstDtoList.add(classesMstMapper(classMst));
			});
		} else {
			throw new Exception("Specified School doesnt have any class configured");
		}

		return classesMstDtoList;
	}
	
	@Override 
	public void updateClasses(ClassesMstDto classesMstDto) throws Exception { 
		if (classesMstDto != null) {
//			Long schoolId = classesMstDto.getSchoolId();
//			School school = schoolRepository.getSchoolById(schoolId);
			if (classesMstDto.getId() >= 0) {
		ClassMst existingClasses =  classesMstRepository.getClassesMstById(classesMstDto.getId(),true);
		existingClasses.setTitle(classesMstDto.getTitle());
		existingClasses.setActive(classesMstDto.getActive());
		classesMstRepository.save(existingClasses); 
			} else {
				throw new Exception("Record has not updated");
			}
		}
	}

	@Override
	public void activeDeactiveClasses(ClassesMstDto classesMstDto) throws Exception {
		if (classesMstDto != null) {
//			Long schoolId = classesMstDto.getSchoolId();
//			School school = schoolRepository.getSchoolById(schoolId);
			if (classesMstDto.getId() >= 0) {
				ClassMst classMst = classesMstRepository.getClassesMstById(classesMstDto.getId(),true);
				classMst.setActive(classesMstDto.getActive());
				classesMstRepository.save(classMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}

	}
	
	/*
	 * @Override public String deleteClasses(Long id){
	 * classesMstRepository.deleteById(id); return "Class removed!!"+id; }
	 */
	
	public ClassesMstDto classesMstMapper(ClassMst classMst) {
		ClassesMstDto classesMstDto = new ClassesMstDto();
		classesMstDto.setId(classMst.getId());
		classesMstDto.setActive(classMst.getActive());
		classesMstDto.setTitle(classMst.getTitle());
		if (classMst.getSchool() != null) {
			classesMstDto.setSchoolId(classMst.getSchool().getId());
		}
		return classesMstDto;
	}
}
