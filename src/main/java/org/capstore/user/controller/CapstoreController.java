package org.capstore.user.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.capstore.user.model.Address;
import org.capstore.user.model.Email;
import org.capstore.user.model.Inventory;
import org.capstore.user.model.Shipping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class CapstoreController {

	
	@RequestMapping("/CapStoreHomeAfter1")
	public String capStoreHomeFull1() {
		
		return "CapStoreHomeAfter1";
	}
	
	
	@RequestMapping("/CapStoreHome_full")
	public String capStoreHomeFull() {
		
		return "CapStoreHome_full";
	}
	
	/* @RequestMapping("/admininventory/{productName}")
		public String getInventoryForm(@PathVariable ("productName") String productName, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory/{productName}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("productName", productName);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "Product_full";
		}*/
	
	  /*@RequestMapping("/admininventory1/electronics")*/
	
	
	@RequestMapping("/Page1_full")
	public String page1(ModelMap map) {
		
		return "Page1_full";
	}
	
	
	
	@RequestMapping("/Product_full")
	public String productFull() {
		
		return "Product_full";
	}


	@RequestMapping("/shippingAddressCap")
	public String shippingPage(ModelMap map,@ModelAttribute("address") Address address,@ModelAttribute("address1") Address address1,BindingResult result) {
	final String uri="http://localhost:8084/capstoreApp/shippingRest/address/1";
	RestTemplate restTemplate=new RestTemplate();
	
	Address[] addresses= restTemplate.getForObject(uri, Address[].class);
	
	map.put("addresses", addresses);
	return "shippingAddressCap";
}


@RequestMapping("/paymentCap")
public String paymentPage( @ModelAttribute("address") Address address,@ModelAttribute("address1") Address address1,BindingResult result) {
	Shipping shipping=new  Shipping();
	Email  email=new Email();
	
	if(address1.getAddressId()!=0) {
		shipping.setShippingAddress(address1);
		email.setBody("Address verification");
		}
	else {
		
	final String uri="http://localhost:8084/capstoreApp/shippingRest/addres/1";
	RestTemplate restTemplate=new RestTemplate();
	restTemplate.postForEntity(uri,address,Address.class);
	email.setBody("New Address Verification");
	}
	//generating shippingId
	final String uri1="http://localhost:8084/capstoreApp/shippingRest/shipping/1";
	RestTemplate restTemplate1=new RestTemplate();
	restTemplate1.postForEntity(uri1,shipping,Shipping.class);
	//generating emailId
	email.setDate(new Date());
	email.setFrom_emailId("capstore@gmail.com");
	email.setSubject("Address verification");
	final String uri2="http://localhost:8084/capstoreApp/shippingRest/email";
	RestTemplate restTemplate2=new RestTemplate();
	restTemplate2.postForEntity(uri2,email,Email.class);
	return "PaymentCap";
}

	@RequestMapping("/paymentSuccess")
	public String paymentSuccessPage() {
	
	return "paymentSuccessfullCap";
}
	
	@RequestMapping("/Wishlist_full")
	public String productFull2() {
		
		return "Wishlist_full";
	}
	
	
	
	
	
}
