package org.capstore.user.model;

import java.util.List;



import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


public class Category {
	
private int categoryId;
private String categoryName;

private Discount dis;
private List<Inventory> inventory;
public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public Discount getDis() {
	return dis;
}
public void setDis(Discount dis) {
	this.dis = dis;
}
public List<Inventory> getInventory() {
	return inventory;
}
public void setInventory(List<Inventory> inventory) {
	this.inventory = inventory;
}
public Category(int categoryId, String categoryName, Discount dis, List<Inventory> inventory) {
	super();
	this.categoryId = categoryId;
	this.categoryName = categoryName;
	this.dis = dis;
	this.inventory = inventory;
}
public Category() {
	super();
}

}
