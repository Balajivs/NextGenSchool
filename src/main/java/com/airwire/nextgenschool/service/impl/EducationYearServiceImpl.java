package com.airwire.nextgenschool.service.impl;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import com.airwire.nextgenschool.model.EducationalYearMst;
import com.airwire.nextgenschool.model.School;
import com.airwire.nextgenschool.repository.EducationalYearMstRepository;
import com.airwire.nextgenschool.repository.SchoolRepository;
import com.airwire.nextgenschool.service.EducationYearService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EducationYearServiceImpl implements EducationYearService {

    @Autowired
    EducationalYearMstRepository educationalYearMstRepository;

    @Autowired
    SchoolRepository schoolRepository;

    @Override
    public void create(EducationalYearMstDto educationalYearMstDto) throws Exception {
        if(educationalYearMstDto!=null){
            Long schoolId = educationalYearMstDto.getSchoolId();
            School school = schoolRepository.getSchoolById(schoolId);
            if(school!=null){
                EducationalYearMst educationalYearMst = new EducationalYearMst();
                educationalYearMst.setDescription(educationalYearMstDto.getDescription());
                educationalYearMst.setCurrentYear(educationalYearMstDto.isCurrentYear());
                educationalYearMst.setSchool(school);
                educationalYearMst.setActive(true);
                educationalYearMstRepository.save(educationalYearMst);
            }else{
                throw new Exception("School Not Found");
            }




        }


    }
}
