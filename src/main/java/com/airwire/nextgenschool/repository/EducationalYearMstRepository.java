package com.airwire.nextgenschool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.airwire.nextgenschool.model.EducationalYearMst;

/**
 * @author Balaji Sambhale
 * @date 28/03/2021
 * The Interface EducationalYearMstRepository.
 */
public interface EducationalYearMstRepository extends JpaRepository<EducationalYearMst, Long> {

	/**
	 * Gets the educational year mst by id.
	 *
	 * @param id the id
	 * @param isActive the is active
	 * @return the educational year mst by id
	 */
	@Query("SELECT e FROM EducationalYearMst e WHERE e.id=:id AND e.active=:isActive")
	EducationalYearMst getEducationalYearMstById(@Param("id") Long id,@Param("isActive") boolean isActive);
	
	
	/**
	 * Gets the educational year mst by school id.
	 *
	 * @param id the id
	 * @param isActive the is active
	 * @return the educational year mst by school id
	 */
	@Query("SELECT e FROM EducationalYearMst e WHERE e.school.id=:id AND e.active=:isActive")
	List<EducationalYearMst> getEducationalYearMstBySchoolId(@Param("id") Long id,@Param("isActive") boolean isActive);
	
}
