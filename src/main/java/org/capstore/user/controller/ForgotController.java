package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.capstore.user.model.Admin;
import org.capstore.user.model.Customer;
import org.capstore.user.model.Merchant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class ForgotController {

	@RequestMapping("/verify")
	public String verifyEmail(@RequestParam("emailId") String emailId, ModelMap map)
	{
		
		final String uri="http://localhost:8081/capstoreApp/api/v1/customer/{emailId}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String, Object> params=new HashMap<>();
		params.put("emailId",emailId);
		Customer customers= restTemplate.getForObject(uri, Customer.class,params);
		map.put("customers",customers);
		if(customers.getCustomerId()==0) {
			final String uri1="http://localhost:8081/capstoreApp/api/v1/merchant/{emailId}";
			RestTemplate restTemplate1=new RestTemplate();
			Map<String, Object> params1=new HashMap<>();
			params1.put("emailId",emailId);
			Merchant merchants=restTemplate1.getForObject(uri1, Merchant.class,params1);
			map.put("merchants", merchants);
			if(merchants.getMerchantId()==0) {
				final String uri2="http://localhost:8081/capstoreApp/api/v1/admin/{emailId}";
				RestTemplate restTemplate2=new RestTemplate();
				Map<String, Object> params2=new HashMap<>();
				params2.put("emailId",emailId);
				Admin admin=restTemplate2.getForObject(uri2, Admin.class,params2);
				map.put("admin", admin);
				if(admin.getAdminId()==0) {
					return "redirect:forgot_full";
				}
			}
			
		}
		
		
		return "encryptedLinkfull";
		
	
	}
	
	@RequestMapping("/encryptLink")
	public String change()
	{
		return "ChangePasswordfull";
	}
	
}