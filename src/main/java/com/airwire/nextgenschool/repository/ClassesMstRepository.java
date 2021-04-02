package com.airwire.nextgenschool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.ClassMst;

public interface ClassesMstRepository  extends JpaRepository<ClassMst, Long> {

	@Query("SELECT c FROM ClassMst c WHERE c.id=:id AND c.active=:active")
	ClassMst getClassesMstById(@Param("id") Long id,@Param("active") boolean active);
	
	@Query("SELECT c FROM ClassMst c WHERE c.school.id=:id AND c.active=:active")
	List<ClassMst> getClassesBySchoolId(@Param("id") Long id,@Param("active") boolean active);
	
	/*
	 * @Query("SELECT c FROM ClassMst c WHERE c.id=:id") ClassMst
	 * getClassesById(@Param("id") Long id);
	 */
	
}
