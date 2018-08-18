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
	   
	  

}
