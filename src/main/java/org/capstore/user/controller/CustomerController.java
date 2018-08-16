package org.capstore.user.controller;


import org.capstore.user.model.Order;
import org.springframework.stereotype.Controller;
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
		final String uri="http://localhost:8081/PilotRestApp/api/v1/pilots";
		RestTemplate restTemplate=new RestTemplate();
		
		Order[] orders= restTemplate.getForObject(uri, Order[].class);
		
		return "order";
	}
}
