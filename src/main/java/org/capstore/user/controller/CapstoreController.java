package org.capstore.user.controller;

import org.capstore.user.model.Inventory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	
	
	@RequestMapping("/Page1_full")
	public String page1(ModelMap map) {

		
		
		
		return "Page1_full";
	}
	
	
	
	@RequestMapping("/Product_full")
	public String productFull() {
		
		return "Product_full";
	}


	@RequestMapping("/shippingAddressCap")
		public String shippingPage() {
		
		return "shippingAddressCap";
	}
	@RequestMapping("/paymentCap")
	public String paymentPage() {
	
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
