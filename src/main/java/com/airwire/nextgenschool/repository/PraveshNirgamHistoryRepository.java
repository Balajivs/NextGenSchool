package com.airwire.nextgenschool.repository;

import java.util.List;

import com.airwire.nextgenschool.model.PraveshNirgamHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface PraveshNirgamHistoryRepository extends JpaRepository<PraveshNirgamHistory, Long> {
	
	@Query("SELECT u FROM PraveshNirgamHistory u WHERE u.praveshNirgam.id=:id")
	List<PraveshNirgamHistory> getPraveshNirgamById(@Param("id") Long id);

}
