package org.capstore.user.model;

 
public class Shipping {
	
	private int shippingId;

	
	private Customer customer; 
	

	private Address shippingAddress;
	
	private Order order;
	
	private Email email;
	public Shipping() {
		
	}

	public int getShippingId() {
		return shippingId;
	}

	public void setShippingId(int shippingId) {
		this.shippingId = shippingId;
	}



	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Address getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(Address shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Email getEmail() {
		return email;
	}

	public void setEmail(Email email) {
		this.email = email;
	}

	public Shipping(int shippingId, Customer customer, Address shippingAddress, Order order, Email email) {
		super();
		this.shippingId = shippingId;
		this.customer = customer;
		this.shippingAddress = shippingAddress;
		this.order = order;
		this.email = email;
	}

	
	

}
