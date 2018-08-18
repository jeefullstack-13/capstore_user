package org.capstore.user.model;

import java.util.List;


public class InvoiceProduct {
	
private int invoiceProductId;
	
private List<Inventory> inventory;
	
	private GenerateInvoice generateInvoice;
	
	private Discount discount;
	public InvoiceProduct() {
		super();
	}

	public int getInvoiceProductId() {;
		return invoiceProductId;
	}

	public void setInvoiceProductId(int invoiceProductId) {
		this.invoiceProductId = invoiceProductId;
	}

	public InvoiceProduct(int invoiceProductId, GenerateInvoice generateInvoice) {
		super();
		this.invoiceProductId = invoiceProductId;
		this.generateInvoice = generateInvoice;
	}

	public GenerateInvoice getGenerateInvoice() {
		return generateInvoice;
	}

	public void setGenerateInvoice(GenerateInvoice generateInvoice) {
		this.generateInvoice = generateInvoice;
	}

	public List<Inventory> getInventory() {
		return inventory;
	}

	public void setInventory(List<Inventory> inventory) {
		this.inventory = inventory;
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

	public InvoiceProduct(int invoiceProductId, List<Inventory> inventory, GenerateInvoice generateInvoice,
			Discount discount) {
		super();
		this.invoiceProductId = invoiceProductId;
		this.inventory = inventory;
		this.generateInvoice = generateInvoice;
		this.discount = discount;
	}

	}
