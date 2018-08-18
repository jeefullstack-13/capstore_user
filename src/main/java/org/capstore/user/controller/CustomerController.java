package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.capstore.user.model.Customer;
import org.capstore.user.model.Order;

import org.springframework.web.client.RestTemplate;

@Controller
public class CustomerController {


	@RequestMapping("/customHome")
	public String capStoreAfterLogin() {
		
		return "customHome";
	}
	
	@RequestMapping("/customHomePage")
	public String capStoreHomeFull() {
		
		return "customHomePage";
	}
	
	@RequestMapping("/order")
	public String orders() {
		
		return "order";

	}
	
@RequestMapping("/customerorder")
	public String viewOrderList(HttpSession session,BindingResult result,ModelMap map) {
		Integer custId= Integer.parseInt(session.getAttribute("customerId").toString());

		final String uri="http://{custId}";
		RestTemplate restTemplate=new RestTemplate();
		
		Order[] orders= restTemplate.getForObject(uri, Order[].class);
		
		
		map.put("orders",orders);
				
			return "customerorder";
			}
	
	@PutMapping("/edit")
	public String editProfile(	@Valid @ModelAttribute("cust") Customer cust,
			BindingResult result) {
		
				if(!result.hasErrors()) {
			final String uri="http://localhost:8085/capstoreApp/api/v1//profile/{customerId}";
			RestTemplate restTemplate=new RestTemplate();
			restTemplate.postForEntity(uri,cust,Customer.class);
					}

		return "customerProfile"; 
		
	}
	
	


}
