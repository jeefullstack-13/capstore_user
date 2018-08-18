package org.capstore.user.model;

public class Address {

	
	private int addressId;
	private Customer customer;
	private Merchant merchant;
	private String streetNumber;
	private String city;
	private String state;
	private String country;
	private int zipcode; 
	private Shipping shipping;
	
	
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	
	public String getStreetNumber() {
		return streetNumber;
	}
	public void setStreetNumber(String streetNumber) {
		this.streetNumber = streetNumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public Shipping getShipping() {
		return shipping;
	}
	public void setShipping(Shipping shipping) {
		this.shipping = shipping;
	}
	
	
	public Address() {
		
	}
	public Address(int addressId, Customer customer, Merchant merchant, String streetNumber, String city, String state,
			String country, int zipcode, Shipping shipping) {
		super();
		this.addressId = addressId;
		this.customer = customer;
		this.merchant = merchant;
		this.streetNumber = streetNumber;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.shipping = shipping;
	}
	
	

}
