package org.capstore.user.model;

import java.util.Date;



public class Admin {

	private int adminId;
	private String email;
	private String password;
	private Date lastLogin;
		public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	public Admin(int adminId, String email, String password, Date lastLogin) {
		super();
		this.adminId = adminId;
		this.email = email;
		this.password = password;
		this.lastLogin = lastLogin;
	}
	public Admin() {
		super();
	}



}
