package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;
import org.capstore.user.model.Merchant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class AdminMerchantController {
	   @RequestMapping("/adminmerchant/{name}")
		public String getMerchantForm(@PathVariable ("name") String name, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/adminmerchant/{name}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("name", name);
			Merchant[] merchantList= restTemplate.getForObject(uri, Merchant[].class,params);
			
		
				map.put("merchantList",merchantList);
			
			map.put("Merchant", new Merchant());
			
			return "adminMerchantManagement";
		}
	   
	   
	   @RequestMapping("/validateMerchants")
		public String getMerchantValidateForm(ModelMap map) {
		
			
			final String uri_merchants="http://localhost:8081/capstoreApp/api/v1/merchantForValidation";
			RestTemplate restTemplate=new RestTemplate();
			Merchant[] merchantList= restTemplate.getForObject(uri_merchants, Merchant[].class);
			
			
			map.put("merchantList",merchantList);
			
			map.put("merchants", new Merchant());
			
			
		   
		   return "validateMerchant";
		   
		}
	   
	   
	   @RequestMapping("/approved/{merchantId}")
		public String approveMerchant(@PathVariable("merchantId")Integer merchantId, ModelMap map) {
		
			
			final String uri_merchants="http://localhost:8081/capstoreApp/api/v1/approveMerchant/{merchantId}";
			RestTemplate restTemplate=new RestTemplate();
			
			Map<String,Object> params=new HashMap<>();
			params.put("merchantId", merchantId);
			
			Merchant merchant = new Merchant();
			merchant.setMerchantId(merchantId);
			merchant.setActive(true);
			
			restTemplate.put(uri_merchants, merchant, params);
			
			
			
		   return "redirect:/validateMerchants";
		   
		}
	   
	   @GetMapping("/declined/{merchantId}")
		public String declineMerchant(@PathVariable("merchantId")Integer merchantId, ModelMap map) {
		
			
			final String uri_merchants="http://localhost:8081/capstoreApp/api/v1/declineMerchant/{merchantId}";
			RestTemplate restTemplate=new RestTemplate();
			
			Map<String,Object> params=new HashMap<>();
			params.put("merchantId", merchantId);
			
		
			restTemplate.delete(uri_merchants, params);
			
			
		   return "redirect:/validateMerchants";
		   
		}
	  
	   
}
