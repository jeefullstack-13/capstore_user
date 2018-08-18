package org.capstore.user.model;

import java.util.Date;
import java.util.List;


public class Inventory {
	
	private int productId;
	private String productName;
	private String description;
	private int brandId;
	
	private Merchant merchant;
	private int noOfViews;
	private String Category;
	private Date dateOfInclusion;
	private double price;
	
	private List<ProductImages> uploadimage;
	private int quantity;
	private Date expiryDate;
	
	private ManagingCart managingCart;
	
	private Discount discount;
	
	private Coupons coupon;
	
	private List<FeedBack> feedback;
	
	
	private List<WishList> wishList;
	
	
	private InvoiceProduct invoiceProduct;
	
	public Inventory() {
		
	}
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	public int getNoOfViews() {
		return noOfViews;
	}
	public void setNoOfViews(int noOfViews) {
		this.noOfViews = noOfViews;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public Date getDateOfInclusion() {
		return dateOfInclusion;
	}
	public void setDateOfInclusion(Date dateOfInclusion) {
		this.dateOfInclusion = dateOfInclusion;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public List<ProductImages> getUploadimage() {
		return uploadimage;
	}
	public void setUploadimage(List<ProductImages> uploadimage) {
		this.uploadimage = uploadimage;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public ManagingCart getManagingCart() {
		return managingCart;
	}
	public void setManagingCart(ManagingCart managingCart) {
		this.managingCart = managingCart;
	}
	public Discount getDiscount() {
		return discount;
	}
	public void setDiscount(Discount discount) {
		this.discount = discount;
	}
	public Coupons getCoupon() {
		return coupon;
	}
	public void setCoupon(Coupons coupon) {
		this.coupon = coupon;
	}
	public List<FeedBack> getFeedback() {
		return feedback;
	}
	public void setFeedback(List<FeedBack> feedback) {
		this.feedback = feedback;
	}
	

	public List<WishList> getWishList() {
		return wishList;
	}

	public void setWishList(List<WishList> wishList) {
		this.wishList = wishList;
	}

	public InvoiceProduct getInvoiceProduct() {
		return invoiceProduct;
	}

	public void setInvoiceProduct(InvoiceProduct invoiceProduct) {
		this.invoiceProduct = invoiceProduct;
	}

	public Inventory(int productId, String productName, String description, int brandId, Merchant merchant,
			int noOfViews, String category, Date dateOfInclusion, double price, List<ProductImages> uploadimage,
			int quantity, Date expiryDate, ManagingCart managingCart, Discount discount, Coupons coupon,
			List<FeedBack> feedback, List<WishList> wishList, InvoiceProduct invoiceProduct) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.description = description;
		this.brandId = brandId;
		this.merchant = merchant;
		this.noOfViews = noOfViews;
		Category = category;
		this.dateOfInclusion = dateOfInclusion;
		this.price = price;
		this.uploadimage = uploadimage;
		this.quantity = quantity;
		this.expiryDate = expiryDate;
		this.managingCart = managingCart;
		this.discount = discount;
		this.coupon = coupon;
		this.feedback = feedback;
		this.wishList = wishList;
		this.invoiceProduct = invoiceProduct;
	}
	
	

	
	

	

	

	
	

	
	
}
