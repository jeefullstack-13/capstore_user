package org.capstore.user.model;


public class WishList {

	private int wishId;
	private Customer customer;
	private Inventory inventory;
	public WishList(int wishId, Customer customer) {
		super();
		this.wishId = wishId;
		this.customer = customer;
	}
	
	public WishList() {
		
	}

	public WishList(int wishId, Customer customer, Inventory inventory) {
		super();
		this.wishId = wishId;
		this.customer = customer;
		this.inventory = inventory;
	}

	public Inventory getInventory() {
		return inventory;
	}

	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}

	public int getWishId() {
		return wishId;
	}

	public void setWishId(int wishId) {
		this.wishId = wishId;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	
}
