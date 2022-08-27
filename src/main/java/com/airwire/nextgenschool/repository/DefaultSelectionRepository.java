package com.airwire.nextgenschool.repository;
import com.airwire.nextgenschool.model.DefaultSelection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * 
 * @author VivekNerle
 *
 */
public interface DefaultSelectionRepository extends JpaRepository<DefaultSelection, Long> {
    
    @Query("SELECT u FROM DefaultSelection u WHERE u.school.id=:id")
    DefaultSelection getDefaultSelectionBySchoolId(@Param("id") Long id);
}