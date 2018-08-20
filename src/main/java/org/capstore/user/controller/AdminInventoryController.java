package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.capstore.user.model.Inventory;
import org.capstore.user.model.WishList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller

public class AdminInventoryController {
	   @RequestMapping("/admininventory/{productName}")
		public String getInventoryForm(@PathVariable ("productName") String productName, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory/{productName}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("productName", productName);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "Product_full";
		}
//	   @RequestMapping("/admininventory1/electronics")
//		public String getInventoryForm1( ModelMap map) {
//		
//			
//			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory1/electronics";
//			RestTemplate restTemplate=new RestTemplate();
//			Map<String,Object> params=new HashMap<>();
//			params.put("category1", "electronics");
//			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
//			
//			
//			map.put("inventoryList",inventoryList);
//			map.put("Inventory", new Inventory());
//			
//			return "Page1_full";
//		}
	   @RequestMapping("/admininventory2/{category2}")
		public String getInventoryForm2(@PathVariable ("category2") String category2, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory2/{category2}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category2", category2);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "AdminInventoryManagement";
		}
	   @RequestMapping("/admininventory3/{category3}")
		public String getInventoryForm3(@PathVariable ("category3") String category3, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory3/{category3}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category3", category3);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "AdminInventoryManagement";
		}
	   
	   @RequestMapping("/wishList/{customerId}")
		public String getWishListPage(@PathVariable ("customerId") Integer customerId, ModelMap map) {
			final String uri="http://localhost:8081/capstoreApp/CapStore/WishList/wishLists/{custId}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("customerId", customerId);
			
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "WishList_full";
			
		}
	   
	   @RequestMapping("/admininventory/Wishlist_full")
		public String getWishPage() {
			
			
			return "Wishlist_full";
			
		}
}
