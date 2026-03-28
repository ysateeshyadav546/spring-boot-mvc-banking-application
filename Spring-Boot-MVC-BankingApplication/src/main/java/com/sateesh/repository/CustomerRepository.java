package com.sateesh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sateesh.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
