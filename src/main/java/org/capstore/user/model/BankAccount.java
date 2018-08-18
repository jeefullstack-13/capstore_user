package org.capstore.user.model;


public class BankAccount {
	
	private int bankAccountId;
	
	private Customer customer;
	private long accountNumber;
	private long cardNumber;
	private double balance;
	private int cvvNumber;
	
	private RefundMoney refundMoney;
	
	public RefundMoney getRefundMoney() {
		return refundMoney;
	}
	public void setRefundMoney(RefundMoney refundMoney) {
		this.refundMoney = refundMoney;
	}
	public int getBankAccountId() {
		return bankAccountId;
	}
	public void setBankAccountId(int bankAccountId) {
		this.bankAccountId = bankAccountId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public long getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public int getCvvNumber() {
		return cvvNumber;
	}
	public void setCvvNumber(int cvvNumber) {
		this.cvvNumber = cvvNumber;
	}
	
	public BankAccount(int bankAccountId, Customer customer, long accountNumber, long cardNumber, double balance,
			int cvvNumber, RefundMoney refundMoney) {
		super();
		this.bankAccountId = bankAccountId;
		this.customer = customer;
		this.accountNumber = accountNumber;
		this.cardNumber = cardNumber;
		this.balance = balance;
		this.cvvNumber = cvvNumber;
		this.refundMoney = refundMoney;
	}
	public BankAccount() {
		
	}

}
