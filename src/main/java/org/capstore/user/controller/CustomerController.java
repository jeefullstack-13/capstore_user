package org.capstore.user.controller;

import javax.servlet.http.HttpSession;

import org.capstore.user.model.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/edit")
	public String editProfile() {
		
		return null; 
		
	}
}
