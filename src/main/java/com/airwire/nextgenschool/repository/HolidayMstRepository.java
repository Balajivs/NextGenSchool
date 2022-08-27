package com.airwire.nextgenschool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.HolidayMst;

public interface HolidayMstRepository extends JpaRepository<HolidayMst, Long> {

	@Query("SELECT h FROM HolidayMst h WHERE h.id=:id AND h.active=:isActive")
	HolidayMst getHolidayMasterById(@Param("id") Long id,@Param("isActive") boolean isActive);
	
	
	@Query("SELECT h FROM HolidayMst h WHERE h.school.id=:id AND h.active=:isActive")
	List<HolidayMst> getHolidayMstBySchoolId(@Param("id") Long id,@Param("isActive") boolean isActive);
}
