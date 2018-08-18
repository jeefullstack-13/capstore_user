package org.capstore.user.model;


public class GenerateInvoice {
	
private int invoiceId;
	
	private Transaction transaction;
	
	private Customer customer;
	
	
	private Coupons coupon;
	
	
	private Order order;
	
	private InvoiceProduct invoiceProduct;
	
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public Transaction getTransaction() {
		return transaction;
	}
	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}
	public GenerateInvoice() {
		super();
	}
	public Customer getCustomerId() {
		return customer;
	}
	public void setCustomerId(Customer customer) {
		this.customer = customer;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Coupons getCoupon() {
		return coupon;
	}
	public void setCoupon(Coupons coupon) {
		this.coupon = coupon;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public InvoiceProduct getInvoiceProduct() {
		return invoiceProduct;
	}
	public void setInvoiceProduct(InvoiceProduct invoiceProduct) {
		this.invoiceProduct = invoiceProduct;
	}
	public GenerateInvoice(int invoiceId, Transaction transaction, Customer customer, Coupons coupon,
			Order order, InvoiceProduct invoiceProduct) {
		super();
		this.invoiceId = invoiceId;
		this.transaction = transaction;
		this.customer = customer;
		this.coupon = coupon;
		this.order = order;
		this.invoiceProduct = invoiceProduct;
	}
	

}
