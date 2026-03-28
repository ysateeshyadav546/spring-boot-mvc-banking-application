package com.sateesh.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sateesh.entity.TransactionRecord;

  public interface TransactionRecordRepository extends JpaRepository<TransactionRecord, Long> {

	  List<TransactionRecord> findByAccountIdOrderByTimeStampDesc(Long accountId);
}
