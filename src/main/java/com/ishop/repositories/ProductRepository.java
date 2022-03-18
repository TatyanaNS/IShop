package com.ishop.repositories;

import com.ishop.model.Product;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ProductRepository extends JpaRepository<Product, UUID>, JpaSpecificationExecutor<Product> {
  Product findByName(String productName);

  @Query("SELECT p FROM Product p WHERE p.id = :id")
  Product getProductById(@Param("id") UUID id);
}