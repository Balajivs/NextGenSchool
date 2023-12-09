package com.airwire.nextgenschool.repository;

import java.util.List;

import com.airwire.nextgenschool.dto.SchoolDto;
import com.airwire.nextgenschool.model.School;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;



public interface SchoolRepository extends JpaRepository<School, Long> {
	
	@Query("SELECT s FROM School s WHERE s.id=:id")
	School getSchoolById(@Param("id") Long id);

	@Query("SELECT new com.airwire.nextgenschool.dto.SchoolDto(u.id,u.schoolName) FROM School u")
	List<SchoolDto> findSchoolIdValues();

}
