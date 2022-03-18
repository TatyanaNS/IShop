package com.ishop.repositories;

import com.ishop.model.Manufacturer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ManufacturerRepository extends JpaRepository<Manufacturer, UUID>, JpaSpecificationExecutor<Manufacturer> {
  Manufacturer findByName(String manufacturerName);

  @Query("SELECT m FROM Manufacturer m WHERE m.id = :id")
  Manufacturer getManufacturerById(@Param("id") UUID id);
}