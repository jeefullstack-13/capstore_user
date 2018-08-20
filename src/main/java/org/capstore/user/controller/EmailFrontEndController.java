package org.capstore.user.controller;

import javax.validation.Valid;

import org.capstore.user.model.Admin;
import org.capstore.user.model.Customer;
import org.capstore.user.model.Email;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class EmailFrontEndController {

	@RequestMapping("/inbox")
	public String getAllEmail(ModelMap map) {
		
		
		final String uri="http://localhost:8081/capstoreApp/api/v1/emails";
		RestTemplate restTemplate=new RestTemplate();
		
		Email[] email= restTemplate.getForObject(uri, Email[].class);
		
		
		map.put("email",email);
		map.put("emails", new Email());
		
		return "inbox";
	}
	@RequestMapping("/compose")
	public String getComposePage(@Valid @ModelAttribute("emails") Email email,ModelMap map) 
	{
		final String uri="http://localhost:8081/capstoreApp/api/v1/customeremail";
		RestTemplate restTemplate=new RestTemplate();
		Customer[] cust= restTemplate.getForObject(uri, Customer[].class);
		map.put("cust",cust);
		
		final String uri1="http://localhost:8081/capstoreApp/api/v1/adminemail";
		Admin[] admin= restTemplate.getForObject(uri1, Admin[].class);
		map.put("admin",admin);
		return "compose";
	}
	
	
	@PostMapping("/saveEmail")
	public String saveEmail(@Valid @ModelAttribute("emails") Email email,BindingResult result) 
	{
		System.out.println(result);
		
		if(!result.hasErrors()) {
			
			System.out.println("saveEmail method");
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/emails";
			RestTemplate restTemplate=new RestTemplate();
			restTemplate.postForEntity(uri,email,Email.class);
		
		}
		
		return "redirect:compose";
	}
	

}
