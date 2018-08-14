package org.capstore.user.model;

import java.util.Date;
import java.util.List;


public class Order{
	
	private int orderId;
	
	private Customer customer;
	
	private  List<ManagingCart> managingCart;
	
	private Date orderDate;
	private Date deliveredDate;
	
	private Shipping shipping;
	
	private String deliveryStatus;
	
	private Transaction transaction;
	
	private ReturnOrders returnOrder;
	
	public ReturnOrders getReturnOrder() {
		return returnOrder;
	}
	public void setReturnOrder(ReturnOrders returnOrder) {
		this.returnOrder = returnOrder;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<ManagingCart> getManagingCart() {
		return managingCart;
	}
	public void setManagingCart(List<ManagingCart> managingCart) {
		this.managingCart = managingCart;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getDeliveredDate() {
		return deliveredDate;
	}
	public void setDeliveredDate(Date deliveredDate) {
		this.deliveredDate = deliveredDate;
	}
	public Shipping getShipping() {
		return shipping;
	}
	public void setShipping(Shipping shipping) {
		this.shipping = shipping;
	}
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public Transaction getTransaction() {
		return transaction;
	}
	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}
	
	public Order(int orderId, Customer customer, List<ManagingCart> managingCart, Date orderDate, Date deliveredDate,
			Shipping shipping, String deliveryStatus, Transaction transaction, ReturnOrders returnOrder) {
		super();
		this.orderId = orderId;
		this.customer = customer;
		this.managingCart = managingCart;
		this.orderDate = orderDate;
		this.deliveredDate = deliveredDate;
		this.shipping = shipping;
		this.deliveryStatus = deliveryStatus;
		this.transaction = transaction;
		this.returnOrder = returnOrder;
	}
	public Order() {
		super();
	}
	
	
	
	
	
	
	

	
	
	
}
