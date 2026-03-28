package com.sateesh.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="TRANSECTION_RECORD")
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class TransactionRecord {

	@Id
	@SequenceGenerator(name = "gen1",sequenceName = "TRANJ_SEQ",allocationSize = 10000,initialValue = 1)
	@GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "account_id")
	private Account account;
	@NonNull
	@Column(length = 30)
	private String type;// Deposite,Withdraw,Transfer
	@NonNull
	private BigDecimal amount;
	@NonNull
	private LocalDateTime timeStamp;
	@NonNull
	@Column(length = 1000)
	private String remarks;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public LocalDateTime getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(LocalDateTime timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "TransactionRecord [id=" + id + ", account=" + account + ", type=" + type + ", amount=" + amount
				+ ", timeStamp=" + timeStamp + ", remarks=" + remarks + "]";
	}
	
	
	
	
	
	
}
