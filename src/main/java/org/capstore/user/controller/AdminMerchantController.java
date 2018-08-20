package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;
import org.capstore.user.model.Merchant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
		public String getMerchantValidateForm(/*@PathVariable ("name") String name, ModelMap map*/) {
		
			/*
			final String uri="http://localhost:8081/capstoreApp/api/v1/adminmerchant/{name}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("name", name);
			Merchant[] merchantList= restTemplate.getForObject(uri, Merchant[].class,params);
			
			
			map.put("merchantList",merchantList);
			map.put("Merchant", new Merchant());
			
			return "adminMerchantManagement";*/
		   
		   return "validateMerchant";
		   
		}
	   
	   @RequestMapping("/validateMerchant")
	   public String getValidateMerchant() {
		   return "validateMerchant";
	   }

}
