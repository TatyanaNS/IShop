package com.ishop.repositories;

import com.ishop.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, UUID>, JpaSpecificationExecutor<User> {
	User findUserByEmail(String email);

	@Query("SELECT u FROM User u JOIN FETCH u.roles r WHERE u.id = :id")
	User getUser(@Param("id") UUID id);
}