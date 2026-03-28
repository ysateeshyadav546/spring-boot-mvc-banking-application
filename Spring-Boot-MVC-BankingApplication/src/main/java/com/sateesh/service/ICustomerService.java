package com.sateesh.service;

import java.util.List;

import com.sateesh.entity.Customer;

public interface ICustomerService {

	public List<Customer> listAll();
	public Customer addCustomer(Customer customer);
	public Customer findById(Long id);
	public void delete(Long id);
}
