package com.airwire.nextgenschool.repository;
import java.util.List;

import com.airwire.nextgenschool.model.PraveshNirgam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * 
 * @author VivekNerle
 *
 */
public interface StudentRepository extends JpaRepository<PraveshNirgam, Long> {
    List<PraveshNirgam> findAll();
    
    List<PraveshNirgam> getStudentByRegNoIn(List<Long> regNo);
    
    @Query("SELECT u FROM PraveshNirgam u WHERE u.id=:id")
    PraveshNirgam getStudentById(@Param("id") Long id);
    
    @Query("SELECT u FROM PraveshNirgam u WHERE u.bookNo=:bookNo AND u.regNo=:regNo")
    PraveshNirgam getStudentByBookNoRegNo(@Param("bookNo") String bookNo,@Param("regNo") Long regNo);
    
    @Query("SELECT u FROM PraveshNirgam u WHERE u.aadharId=:aadharId")
    PraveshNirgam getStudentByAadharId(@Param("aadharId") String aadharId);
    
    @Query("SELECT u FROM PraveshNirgam u WHERE u.id<>:id AND u.bookNo=:bookNo AND u.regNo=:regNo")
    PraveshNirgam getStudentByBookNoRegNoUpdateMode(@Param("id") Long id,@Param("bookNo") String bookNo,@Param("regNo") Long regNo);
    
    @Query("SELECT u FROM PraveshNirgam u WHERE u.id<>:id AND u.aadharId=:aadharId")
    PraveshNirgam getStudentByAadharIdUpdateMode(@Param("id") Long id,@Param("aadharId") String aadharId);
}