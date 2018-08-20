package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.capstore.user.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class ForgotController {

	@RequestMapping("/verify")
	public String verifyEmail(@RequestParam("emailId") String emailId, Model model)
	{
		
		final String uri="http://localhost:8081/capstoreApp/api/v1/emails/{emailId}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String, Object> params=new HashMap<>();
		params.put("emailId",emailId);
		Customer customers= restTemplate.getForObject(uri, Customer.class,params);
		model.addAttribute("customers",customers);
		if(customers.getCustomerId()==0) {
			return "redirect:forgot";
		}
		
		return "encryptedLink";
		
		/*final String uri="http://localhost:8081/capstoreApp/api/v1/emails/{emailId}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String, Object> params=new HashMap<>();
		params.put("emailId",emailId);
		String result= restTemplate.getForObject(uri, String.class,params);
		if(result.equals("null")) {
			return "redirect:forgot";
		}
		Customer customers= restTemplate.getForObject(uri, Customer.class,params);
		if(customers.getCustomerId()==0) {
			return "redirect:forgot";
		}
		else {
			return "ChangePassword";
		}
		
		
		
	}
	
	@RequestMapping("/ChangePassword")
	public String change()
	{
		return "ChangePassword";
	}*/
	}
	
	@RequestMapping("/encryptLink")
	public String change()
	{
		return "ChangePassword";
	}
}