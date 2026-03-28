package com.sateesh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sateesh.entity.Account;
import com.sateesh.repository.AccountRepository;
@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	private AccountRepository accountRepo;
	
	@Override
	public Account createAccount(Account account) {
		
		return accountRepo.save(account);
	}

	@Override
	public List<Account> listAll() {
		
		return accountRepo.findAll();
	}

	@Override
	public Account findById(Long id) {
		
		return accountRepo.findById(id).get() ;
	}

	@Override
	public List<Account> findByCustomerId(Long id) {
		
		return accountRepo.findByCustomerId(id);
	}

	@Override
	public Account save(Account account) {
		
		return accountRepo.save(account);
	}

}
