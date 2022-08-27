package com.airwire.nextgenschool.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.MiscellaneousMst;

public interface MiscellaneousMstRepository extends JpaRepository<MiscellaneousMst, Long>{

	@Query("SELECT m FROM MiscellaneousMst m WHERE m.id=:id AND m.active=:isActive")
	MiscellaneousMst getMiscellaneousMasterById(@Param("id") Long id,@Param("isActive") boolean isActive);
}
