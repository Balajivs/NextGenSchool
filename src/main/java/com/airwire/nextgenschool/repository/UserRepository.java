package com.airwire.nextgenschool.repository;
import com.airwire.nextgenschool.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * 
 * @author ShivshankerMhadiwale
 *
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    List<User> findAll();
    
    @Query("SELECT u FROM User u WHERE u.id=:id")
    User getUserById(@Param("id") Long id);
}