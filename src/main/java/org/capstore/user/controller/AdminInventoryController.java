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
			
			return "adminInventoryManagement";
		}
	   @RequestMapping("/admininventory1/{category1}")
		public String getInventoryForm1(@PathVariable ("category1") String category1, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory1/{category1}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category1", category1);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
		}
	   @RequestMapping("/admininventory2/{category2}")
		public String getInventoryForm2(@PathVariable ("category2") String category2, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory2/{category2}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category2", category2);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
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
			
			return "adminInventoryManagement";
		}
}
