package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.capstore.user.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class PasswordController  {
	

	private Customer customer;

	/*@RequestMapping("/")
	public String getAllDeatils(ModelMap map) {
		
		final String uri="http://localhost:8084/loginRest/api/v1/customers/";
		RestTemplate restTemplate=new RestTemplate();
		
		Customer[] cust = restTemplate.getForObject(uri, Customer[].class);
	
	
		
		map.put("customer", cust);
		map.put("customers",new Customer());
	
		return "pilotForm";
	}*/
	
	


	/*
	@PostMapping("/changePwd")
	public String changePwd( @RequestParam String oldPassword
			,@RequestParam String newPassword,@RequestParam String confirmNewPassword,
			HttpSession session, Model model) {
			
		changePwd.setEmailId(session.getAttribute("email").toString());
		changePwd.setOldPassword(oldPassword);
		changePwd.setNewPassword(newPassword);
		changePwd.setConfirmNewPassword(confirmNewPassword);
		
		
			final String uri="http://localhost:8084/loginRest/api/v1/customers";
			RestTemplate restTemplate=new RestTemplate();
		
		
			restTemplate.postForEntity(uri, changePwd, ChangePwd.class);
		

		
		return "login";
		
	}*/
	@PostMapping("/changePwd")
	public String updatePassword(
			ModelMap map,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("newPassword") String newPassword,
			@RequestParam("confirmNewPassword") String confirmNewPassword,
			HttpSession session
			) {
		
		   

			final String uri="http://localhost:8081/capstoreApp/api/v1/customers/{email}";
			RestTemplate restTemplate=new RestTemplate();
			
			Map< String, Object> params= new HashMap<>();
			params.put("email", email);
			
			
			Customer customer = restTemplate.getForObject(uri, Customer.class,params);
			
			
			
			if(customer!=null) {

				final String uri_customer="http://localhost:8081/capstoreApp/api/v1/customersPasswordChange/{customerId}/{password}";
				RestTemplate restTemplate1=new RestTemplate();
				
				Map< String, Object> params1= new HashMap<>();
				params1.put("customerId", customer.getCustomerId());
				params1.put("password", newPassword);
				
				restTemplate1.put(uri_customer,customer,params1);
				
				
			}
				
					
		
		return "redirect:/customHomePage";
		 
	}
	
	
	
	

}
