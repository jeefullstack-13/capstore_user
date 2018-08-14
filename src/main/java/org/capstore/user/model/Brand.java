package org.capstore.user.model;

import java.util.List;




public class Brand {
	
	private int brandId;
	private String brandName;
	
	private List<Inventory> inventory;

public Brand() {
	super();
}



public int getBrandId() {
	return brandId;
}

public void setBrandId(int brandId) {
	this.brandId = brandId;
}

public String getBrandName() {
	return brandName;
}

public void setBrandName(String brandName) {
	this.brandName = brandName;
}



public List<Inventory> getInventory() {
	return inventory;
}



public void setInventory(List<Inventory> inventory) {
	this.inventory = inventory;
}



public Brand(int brandId, String brandName, List<Inventory> inventory) {
	super();
	this.brandId = brandId;
	this.brandName = brandName;
	this.inventory = inventory;
}








}
