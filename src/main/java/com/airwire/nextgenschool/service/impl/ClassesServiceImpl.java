package com.airwire.nextgenschool.service.impl;

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
	public void create(ClassesMstDto classesMstDto) throws Exception {
		if(classesMstDto!=null){
			Long schoolId = classesMstDto.getSchoolId();
			School school = schoolRepository.getSchoolById(schoolId);
			if(school!=null){
				ClassMst classMst = new ClassMst();
				classMst.setTitle(classesMstDto.getTitle());
				classMst.setActive(true);
				classesMstRepository.save(classMst);
			}else{
				throw new Exception("Class Not Found");
			}




		}


	}
}
