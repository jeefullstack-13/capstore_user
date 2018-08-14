package org.capstore.user.model;


public class Transaction {
private int transactionId;
private Order order;
private double amount;
private String modeOfPurchase;
private String status;

private ReturnOrders returnOrder;

public Transaction() {
	
}

public Transaction(int transactionId, Order order, double amount, String modeOfPurchase, String status) {
	
	this.transactionId = transactionId;
	this.order = order;
	this.amount = amount;
	this.modeOfPurchase = modeOfPurchase;
	this.status = status;
}

public int getTransactionId() {
	return transactionId;
}

public void setTransactionId(int transactionId) {
	this.transactionId = transactionId;
}

public Order getOrder() {
	return order;
}

public void setOrder(Order order) {
	this.order = order;
}

public double getAmount() {
	return amount;
}

public void setAmount(double amount) {
	this.amount = amount;
}

public String getModeOfPurchase() {
	return modeOfPurchase;
}

public void setModeOfPurchase(String modeOfPurchase) {
	this.modeOfPurchase = modeOfPurchase;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}
public ReturnOrders getReturnOrder() {
	return returnOrder;
}

public void setReturnOrder(ReturnOrders returnOrder) {
	this.returnOrder = returnOrder;
}
}
 
	
	
	 
 
