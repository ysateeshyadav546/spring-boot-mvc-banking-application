package com.sateesh.service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sateesh.entity.Account;
import com.sateesh.entity.TransactionRecord;
import com.sateesh.error.CustomException;
import com.sateesh.repository.TransactionRecordRepository;

import jakarta.transaction.Transactional;

@Service
public class TransactionRecordService implements ITransactionRecord {

	@Autowired
	private TransactionRecordRepository transactionRepo;

	@Autowired
	private IAccountService accountService;

	// For Deposit Money
	@Transactional
	@Override
	public TransactionRecord deposit(Long accountNo, BigDecimal amount, String remarks)  {

		Account acc = accountService.findById(accountNo);//.orElseThrow(() -> throw  new CustomException ("Account Number Not Found!!");
		 if(acc.getBalance().compareTo(amount)<0) throw new CustomException ("Insufficient	 Balance!!");
		acc.setBalance(acc.getBalance().add(amount));
		accountService.save(acc);

		TransactionRecord new_transaction = new TransactionRecord();
		new_transaction.setAccount(acc);
		new_transaction.setType("DEPOSIT");
		new_transaction.setAmount(acc.getBalance());
		new_transaction.setRemarks(remarks);
		new_transaction.setTimeStamp(LocalDateTime.now());  
		return transactionRepo.save(new_transaction);

	}

	// For WIthDraw Money
	@Transactional
	@Override
	public TransactionRecord withdraw(Long accountNo, BigDecimal account, String remarks)  {

		Account withDrwAcc = accountService.findById(accountNo);//.orElseThrow(() -> new Exception("Account Number Does not Exists!!"));
				
		if (withDrwAcc.getBalance().compareTo(account) < 0)
			throw new CustomException("Insufficient Balanace!!");
		withDrwAcc.setBalance(withDrwAcc.getBalance().subtract(account));
		accountService.save(withDrwAcc);

		TransactionRecord withdrw_transaction = new TransactionRecord();
		withdrw_transaction.setAccount(withDrwAcc);
		withdrw_transaction.setType("WITHDRAW");
		withdrw_transaction.setAmount(withDrwAcc.getBalance());
		withdrw_transaction.setTimeStamp(LocalDateTime.now()); 
		withdrw_transaction.setRemarks(remarks);
		//System.out.println(withDrwAcc.getBalance());

		return transactionRepo.save(withdrw_transaction);
	}

	// For Transfer Money From one Account to another Account

	@Override
	public TransactionRecord transfer(Long fromAccountNo, Long toAccountNo, BigDecimal amount, String remarks)
			{
		if (fromAccountNo.equals(toAccountNo))
			throw new CustomException("Can not Tranfer to same Account ");
		Account toAccount = accountService.findById(toAccountNo);
				//.orElseThrow(() -> new Exception("Where You Want to Tansfer money That account Number Invalid !!"));
		Account fromAccount = accountService.findById(fromAccountNo);
				//.orElseThrow(() -> new Exception("Your Account Number Invalid !!"));

		if (fromAccount.getBalance().compareTo(amount) < 0)
			throw new CustomException("Insufficient balance!!");

		fromAccount.setBalance(fromAccount.getBalance().subtract(amount));
		toAccount.setBalance(toAccount.getBalance().add(amount));

		accountService.save(fromAccount);
		accountService.save(toAccount);

		TransactionRecord tr1 = new TransactionRecord();
		tr1.setAccount(fromAccount);
		tr1.setAmount(amount);
		tr1.setType("TRANSFER_OUT");
		tr1.setRemarks("To account " + toAccount.getId() + " : " + remarks);
		 tr1.setTimeStamp(LocalDateTime.now()); 
		transactionRepo.save(tr1);

		TransactionRecord tr2 = new TransactionRecord();

		tr2.setAccount(toAccount);
		tr2.setAmount(amount);
		tr2.setType("TRANSFER_IN");
		tr2.setAmount(amount);
		tr2.setRemarks(" Form acc " + fromAccount.getId() + " : " + remarks);
		tr2.setTimeStamp(LocalDateTime.now()); 
		return transactionRepo.save(tr2);

	}

	@Override
	public List<TransactionRecord> history(Long accountNo) {

		return transactionRepo.findByAccountIdOrderByTimeStampDesc(accountNo);

	}

}
