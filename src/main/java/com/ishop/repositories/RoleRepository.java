package com.ishop.repositories;

import com.ishop.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RoleRepository  extends JpaRepository<Role, UUID>, JpaSpecificationExecutor<Role> {
  Role findByName(String roleName);

  @Query("SELECT r FROM Role r WHERE r.id = :id")
  Role getRole(@Param("id") UUID id);
}