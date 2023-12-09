package com.airwire.nextgenschool.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airwire.nextgenschool.dto.DivisionMstDto;
import com.airwire.nextgenschool.model.ClassDivisionMst;
import com.airwire.nextgenschool.model.ClassMst;
import com.airwire.nextgenschool.repository.ClassesMstRepository;
import com.airwire.nextgenschool.repository.DivisionMstRepository;
import com.airwire.nextgenschool.service.DivisionService;

@Service
public class DivisionServiceImpl implements DivisionService{

	@Autowired
	DivisionMstRepository divisionMstRepository;
	
	@Autowired
	ClassesMstRepository classesMstRepository;
	
	@Override
	public void createDivision(DivisionMstDto divisionMstDto) throws Exception {
		if(divisionMstDto!=null) {
			Long classId = divisionMstDto.getClassesId();
			ClassMst classes = classesMstRepository.getClassesById(classId);
			if(classes!=null) {
				ClassDivisionMst classDivisionMst = new ClassDivisionMst();
				classDivisionMst.setTitle(divisionMstDto.getTitle());
				classDivisionMst.setActive(true);
				classDivisionMst.setClassMaster(classes);
				divisionMstRepository.save(classDivisionMst);
			}else{
				throw new Exception("Division Not Found");
			}
		}
	}

	@Override
	public List<DivisionMstDto> getDivisionByClassId(Long classesId) throws Exception {
		
		List<ClassDivisionMst> list = divisionMstRepository.getDivisionByClassId(classesId, true);
		List<DivisionMstDto> divisionMstDtoList = new ArrayList<DivisionMstDto>();
		if (list != null && list.size() > 0) {
			list.stream().forEach(classDicisionMst -> {
				divisionMstDtoList.add(classesDivisionMstMapper(classDicisionMst));
			});
		} else {
			throw new Exception("Specified Class doesnt have any division configured");
		}

		return divisionMstDtoList;
	}

	@Override
	public void updateDivision(DivisionMstDto divisionMstDto) throws Exception { 
		if (divisionMstDto != null) {
			if (divisionMstDto.getId() >= 0) {
		ClassDivisionMst existingDivision = divisionMstRepository.getClassesDivisionMstById(divisionMstDto.getId(),true);
		existingDivision.setTitle(divisionMstDto.getTitle());
		existingDivision.setActive(divisionMstDto.getActive());
		divisionMstRepository.save(existingDivision); 
			} else {
				throw new Exception("Record has not updated");
			}
		}
	}

	@Override
	public void activeDeactiveDivision(DivisionMstDto divisionMstDto) throws Exception {
		
		if (divisionMstDto != null) {
			if (divisionMstDto.getId() >= 0) {
				ClassDivisionMst classDivisionMst = divisionMstRepository.getClassesDivisionMstById(divisionMstDto.getId(),true);
				classDivisionMst.setActive(divisionMstDto.getActive());
				divisionMstRepository.save(classDivisionMst);
			} else {
				throw new Exception("Record has not updated");
			}

		}
		
	}
	
	public DivisionMstDto classesDivisionMstMapper(ClassDivisionMst classDivisionMst) {
		DivisionMstDto divisionMstDto = new DivisionMstDto();
		divisionMstDto.setId(classDivisionMst.getId());
		divisionMstDto.setActive(classDivisionMst.getActive());
		divisionMstDto.setTitle(classDivisionMst.getTitle());
		if (classDivisionMst.getClassMaster() != null) {
			divisionMstDto.setClassesId(classDivisionMst.getClassMaster().getId());
		}
		return divisionMstDto;
	}
	
} 
