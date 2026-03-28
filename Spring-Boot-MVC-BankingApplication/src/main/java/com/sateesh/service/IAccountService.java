package com.sateesh.service;

import java.util.List;

import com.sateesh.entity.Account;

public interface IAccountService {

	public Account createAccount(Account account);
	public List<Account> listAll();
	public Account findById(Long id);
	public 	List<Account> findByCustomerId(Long id);
	public Account save(Account account);
	
}
