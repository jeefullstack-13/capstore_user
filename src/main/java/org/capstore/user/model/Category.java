package org.capstore.user.model;

import java.util.List;

public class Category {
private int categoryId;
private String categoryName;
private List<Inventory> inventory;

public List<Inventory> getInventory() {
	return inventory;
}
public void setInventory(List<Inventory> inventory) {
	this.inventory = inventory;
}
private Discount dis;

public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}


public Category(int categoryId, String categoryName, List<Inventory> inventory, Discount dis) {
	super();
	this.categoryId = categoryId;
	this.categoryName = categoryName;
	this.inventory = inventory;
	this.dis = dis;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public Discount getDiscount() {
	return dis;
}
public void setDiscount(Discount discount) {
	this.dis = discount;
}
public Category() {
	super();
}

}
