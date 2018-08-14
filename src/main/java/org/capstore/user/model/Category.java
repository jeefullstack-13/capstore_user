package org.capstore.user.model;



public class Category {
private int categoryId;
private String categoryName;
private Discount dis;

public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}

public Category(int categoryId, String categoryName, Discount discount) {
	super();
	this.categoryId = categoryId;
	this.categoryName = categoryName;
	this.dis = discount;
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
