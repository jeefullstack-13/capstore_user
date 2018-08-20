package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.capstore.user.model.Inventory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	  @RequestMapping("/admininventory1/electronics")
			public String getInventoryForm1( ModelMap map) {
			
				
				final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory1/electronics";
				RestTemplate restTemplate=new RestTemplate();
				Map<String,Object> params=new HashMap<>();
				params.put("category1", "electronics");
				Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
				
				
				map.put("inventoryList",inventoryList);
				map.put("Inventory", new Inventory());
				
				return "Page1_full";
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
