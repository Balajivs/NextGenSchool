package com.airwire.nextgenschool.service;

import com.airwire.nextgenschool.dto.ClassesMstDto;
import com.airwire.nextgenschool.model.ClassMst;

public interface ClassesService {

	void createClasses(ClassesMstDto classesMstDto) throws Exception;


	void getClassesBySchoolId(Long id);

	void updateClasses(ClassMst classMst);

	String deleteClasses(Long id);

}
