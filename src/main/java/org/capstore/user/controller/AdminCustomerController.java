package org.capstore.user.controller;


import java.util.HashMap;
import java.util.Map;

import org.capstore.user.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;
@Controller
public class AdminCustomerController {
	   @RequestMapping("/admincustomer/{customerName}")
		public String getCustomerForm(@PathVariable ("customerName") String customerName, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admincustomer/{customerName}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("customerName", customerName);
			Customer[] customerList= restTemplate.getForObject(uri, Customer[].class,params);
			
			
			map.put("customerList",customerList);
			map.put("Customer", new Customer());
			
			return "adminCustomerManagement";
		}
	   

}
