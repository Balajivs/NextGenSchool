package com.airwire.nextgenschool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.ClassDivisionMst;
import com.airwire.nextgenschool.model.ClassMst;

public interface DivisionMstRepository extends JpaRepository<ClassDivisionMst, Long> {

	@Query("SELECT d FROM ClassDivisionMst d WHERE d.id=:id AND d.active=:active")
	ClassDivisionMst getClassesDivisionMstById(@Param("id") Long id,@Param("active") boolean active);
	
	@Query("SELECT d FROM ClassDivisionMst d WHERE d.classMaster.id=:id AND d.active=:active")
	List<ClassDivisionMst> getDivisionByClassId(@Param("id") Long id,@Param("active") boolean active);
	

}
