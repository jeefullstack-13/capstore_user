package org.capstore.user.model;


public class RefundMoney {
	
private int refundId;
	
private ReturnOrders returnOrder;

private Transaction transaction;

private BankAccount bankAccount;
public int getRefundId() {
	return refundId;
}
public void setRefundId(int refundId) {
	this.refundId = refundId;
}
public ReturnOrders getReturnOrder() {
	return returnOrder;
}
public void setReturnOrder(ReturnOrders returnOrder) {
	this.returnOrder = returnOrder;
}
public Transaction getTransaction() {
	return transaction;
}
public void setTransaction(Transaction transaction) {
	this.transaction = transaction;
}
public BankAccount getBankAccount() {
	return bankAccount;
}
public void setBankAccount(BankAccount bankAccount) {
	this.bankAccount = bankAccount;
}
public RefundMoney(int refundId, ReturnOrders returnOrder, Transaction transaction, BankAccount bankAccount) {
	super();
	this.refundId = refundId;
	this.returnOrder = returnOrder;
	this.transaction = transaction;
	this.bankAccount = bankAccount;
}
public RefundMoney() {
	super();
}



}
