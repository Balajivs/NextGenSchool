package com.airwire.nextgenschool.controller;

import com.airwire.nextgenschool.dto.EducationalYearMstDto;
import com.airwire.nextgenschool.service.EducationYearService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EducationYearController {

    @Autowired
    EducationYearService educationYearService;

    @RequestMapping(value = "createEducationYear", method = RequestMethod.POST)
    public void create(@RequestBody EducationalYearMstDto educationalYearMstDto) throws Exception {
        educationYearService.create(educationalYearMstDto);
    }

}
