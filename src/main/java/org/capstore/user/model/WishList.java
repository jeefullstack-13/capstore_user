package org.capstore.user.model;


public class WishList {

	
	private int wishId;
	
	private Customer customer;
	
	private Inventory inventory;
	private boolean isActive;
	
	
	public WishList(int wishId, Customer customer, Inventory inventory, boolean isActive) {
		super();
		this.wishId = wishId;
		this.customer = customer;
		this.inventory = inventory;
		this.isActive = isActive;
	}

	public WishList() {
		
	}

 public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
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
