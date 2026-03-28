	package com.sateesh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sateesh.entity.Customer;
import com.sateesh.repository.CustomerRepository;
@Service
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	private CustomerRepository customerRepo;
	
	@Override
	public List<Customer> listAll() {
		
		return customerRepo.findAll();
	}

	@Override
	public Customer addCustomer(Customer customer) {
		
		return customerRepo.save(customer);
	}

	@Override
	public Customer findById(Long id) {
		
		return customerRepo.findById(id).orElseThrow(()-> new IllegalArgumentException("Invalid ID!!"));
	}

	@Override
	public void delete(Long id) {
		
		customerRepo.deleteById(id);
		
	}

}
