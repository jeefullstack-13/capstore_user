package org.capstore.user.model;



 
public class ManagingCart {
private int cartId;
	
private Customer customer;
	
private Inventory inventory;
private int quantity;
private String status;

private Order order;

public ManagingCart(int cartId, Customer customer, Inventory inventory, int quantity, String status, Order order) {
	super();
	this.cartId = cartId;
	this.customer = customer;
	this.inventory = inventory;
	this.quantity = quantity;
	this.status = status;
	this.order = order;
}
public ManagingCart() {
	
}
public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public Inventory getInventory() {
	return inventory;
}
public void setInventory(Inventory inventory) {
	this.inventory = inventory;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Order getOrder() {
	return order;
}
public void setOrder(Order order) {
	this.order = order;
}



}
