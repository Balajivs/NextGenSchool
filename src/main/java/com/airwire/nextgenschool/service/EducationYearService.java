package com.airwire.nextgenschool.service;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import org.springframework.web.bind.annotation.RequestBody;

public interface EducationYearService {

    void create(EducationalYearMstDto educationalYearMstDto) throws Exception;


}
