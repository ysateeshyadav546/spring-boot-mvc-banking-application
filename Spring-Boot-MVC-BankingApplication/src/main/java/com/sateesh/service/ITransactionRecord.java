package com.sateesh.service;

import java.math.BigDecimal;
import java.util.List;

import com.sateesh.entity.TransactionRecord;

public interface ITransactionRecord {

	public TransactionRecord deposit(Long accountNo,BigDecimal amount,String remarks);
	
	public TransactionRecord withdraw(Long accountNo,BigDecimal account,String remarks);
	
	public TransactionRecord transfer(Long fromAccountNo,Long toAccountNo,BigDecimal amount,String remaeks);
	
	public List<TransactionRecord> history(Long accountNo);
	
	
}
