package com.airwire.nextgenschool.service;

import java.util.List;

import com.airwire.nextgenschool.dto.ClassesMstDto;

public interface ClassesService {

	void createClasses(ClassesMstDto classesMstDto) throws Exception;

	List<ClassesMstDto> getClassesBySchoolId(Long id) throws Exception;

	void updateClasses(ClassesMstDto classesMstDto) throws Exception;

	void activeDeactiveClasses(ClassesMstDto classesMstDto) throws Exception;

}
