package com.airwire.nextgenschool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.TeacherMst;

public interface TeacherMstRepository extends JpaRepository<TeacherMst, Long>{

	
	@Query("SELECT t FROM TeacherMst t WHERE t.id=:id AND t.active=:isActive")
	TeacherMst getTeacherMstById(@Param("id") Long id,@Param("isActive") boolean isActive);
	
	@Query("SELECT e FROM TeacherMst e WHERE e.school.id=:id AND e.active=:isActive")
	List<TeacherMst> getTeacherMstBySchoolId(@Param("id") Long id,@Param("isActive") boolean isActive);
	
}
