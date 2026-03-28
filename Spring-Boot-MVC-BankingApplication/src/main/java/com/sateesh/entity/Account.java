package com.sateesh.entity;

import java.math.BigDecimal;

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
@Table(name = "ACCOUNT_BANK")
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Data
public class Account {

	@Id
	@SequenceGenerator(name = "gen1",sequenceName = "AC_SEQ",allocationSize = 10000,initialValue = 1)
	@GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
	private Long id;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	@NonNull
	private Customer customer;
	@NonNull
	private String accountType;
	@NonNull
	private BigDecimal balance=BigDecimal.ZERO;
	@NonNull
	private Boolean active=true;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public BigDecimal getBalance() {
		return balance;
	}
	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", customer=" + customer + ", accountType=" + accountType + ", balance=" + balance
				+ ", active=" + active + "]";
	}
	
	
	
	

}
