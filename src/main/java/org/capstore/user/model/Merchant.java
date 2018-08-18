package org.capstore.user.model;

import java.util.Date;
import java.util.List;


public class Merchant {
	
	private int merchantId;
	private String name;
	private String companyName;
	private String phoneNo;
	private String emailId;
	private String password;
	private boolean isCertified;
	private boolean isActive;
	private String status;
	private Date lastLogin; 
	
	private List<Address> address;
	
	private List<Inventory> inventory;
	
	private List<FeedBack> feedback;
	
	private List<ReturnOrders> returnOrder;
	public Merchant() {
		
	}
	
	
	
	



	public Merchant(int merchantId, String name, String companyName, String phoneNo, String emailId, String password,
			boolean isCertified, boolean isActive, String status, Date lastLogin, List<Address> address,
			List<Inventory> inventory, List<FeedBack> feedback, List<ReturnOrders> returnOrder) {
		super();
		this.merchantId = merchantId;
		this.name = name;
		this.companyName = companyName;
		this.phoneNo = phoneNo;
		this.emailId = emailId;
		this.password = password;
		this.isCertified = isCertified;
		this.isActive = isActive;
		this.status = status;
		this.lastLogin = lastLogin;
		this.address = address;
		this.inventory = inventory;
		this.feedback = feedback;
		this.returnOrder = returnOrder;
	}







	public List<ReturnOrders> getReturnOrder() {
		return returnOrder;
	}



	public void setReturnOrder(List<ReturnOrders> returnOrder) {
		this.returnOrder = returnOrder;
	}



	public int getMerchantId() {
		return merchantId;
	}
	public void setMerchantId(int merchantId) {
		this.merchantId = merchantId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isCertified() {
		return isCertified;
	}
	public void setCertified(boolean isCertified) {
		this.isCertified = isCertified;
	}
	
	public boolean isActive() {
		return isActive;
	}


public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	public List<Address> getAddress() {
		return address;
	}
	public void setAddress(List<Address> address) {
		this.address = address;
	}
	public List<Inventory> getInventory() {
		return inventory;
	}
	public void setInventory(List<Inventory> inventory) {
		this.inventory = inventory;
	}
	public List<FeedBack> getFeedback() {
		return feedback;
	}
	public void setFeedback(List<FeedBack> feedback) {
		this.feedback = feedback;
	}
	

}
