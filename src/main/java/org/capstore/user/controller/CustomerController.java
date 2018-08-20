package org.capstore.user.controller;
<<<<<<< HEAD

import javax.servlet.http.HttpSession;
import org.capstore.user.model.Customer;
import org.capstore.user.model.Order;
=======

>>>>>>> branch 'master' of https://github.com/jeefullstack-13/capstore_user.git
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping("/customerProfile/{customerId}")
	public String viewCustomerProfile(HttpSession session,ModelMap map) {
		//Integer custId= Integer.parseInt(session.getAttribute("customerId").toString());

		final String uri="http://localhost:8085/capstoreApp/api/v1/customerProfile/1";
		RestTemplate restTemplate=new RestTemplate();
		
		Customer customer= restTemplate.getForObject(uri, Customer.class);
		
	
		map.put("cust",customer);
				
			return "customerProfile";
			}
	
	@RequestMapping("/profile")
	public String editCustomerProfile(ModelMap map) {
		
		final String uri="http://localhost:8085/capstoreApp/api/v1/customerProfile";
		RestTemplate restTemplate=new RestTemplate();
		
		map.put("cust", new Customer());
		
		return "redirect:profile";
		
	}
	
	
<<<<<<< HEAD
	@RequestMapping("/update")
	public String editProfile(ModelMap map) {
		
		/*final String uri="http://localhost:8085/capstoreApp/api/v1";
		RestTemplate restTemplate=new RestTemplate();
		Customer[] customer= restTemplate.getForObject(uri, Customer[].class);
		
		RestTemplate restTemplate1=new RestTemplate();
			final String uri1="http://localhost:8085/capstoreApp/api/v1//profile/{customerId}";
			Customer customer1=	restTemplate.getForObject(uri,Customer.class);
			map.put("customers",customer);
			map.put("cust", customer1);*/
			
			return "customerProfile"; 
		
	}
	
	
	
	
	
	
	
=======


>>>>>>> branch 'master' of https://github.com/jeefullstack-13/capstore_user.git
}
