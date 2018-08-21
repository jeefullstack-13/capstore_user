package org.capstore.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.capstore.user.model.Admin;
import org.capstore.user.model.Customer;
import org.capstore.user.model.Merchant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;



@Controller
public class LoginSignUpController {
	
	@RequestMapping("/login")
	public String display( ModelMap map)
	{
		List<String> opts=new ArrayList<>();
		opts.add("yes");
		opts.add("no");
		
		map.put("registerCustomer", new Customer());
		map.put("registerMerchant", new Merchant());
		map.put("radios", opts);
		/*map.put("loginAdmin",new Admin());
		map.put("loginMerchant", new Merchant());
		map.put("loginCustomer", new Customer());*/
		return "login";
	}
	
	@RequestMapping("/somePage")
	public String somePage()
	{
		return "somePage";
	}
	
	@RequestMapping("/hello")
	public String helloPage()
	{
		return "hello";
	}
	@RequestMapping("/byee")
	public String byee()
	{
		return "byee";
	}
	
	@RequestMapping("/forgot")
	public String forgot()
	{
		return "forgot";
	}
	
	@RequestMapping("/contactUs")
	public String contactUs()
	{
		return "contactUs";
	}
	
	@RequestMapping("/termsandconditions")
	public String TnC()
	{
		return "termsandconditions";
	}
	
	@RequestMapping("/logo_image")
	public String logo()
	{
		return "login";
	}
	
		@PostMapping("/signupCustomer")
		public String showCustomerDetails(
				@Valid @ModelAttribute("registerCustomer") Customer cust ,BindingResult result) {
			System.out.println("Hello");
			//if(!result.hasErrors()) {
				System.out.println("Hello123");
				final String uri="http://localhost:8081/RestApp/api/v1/userCustomer";
				RestTemplate restTemplate=new RestTemplate();
			restTemplate.postForEntity(uri,cust,Customer.class);
			//}
			return "redirect:login";
		}
		
		@PostMapping("/signupMerchant")
		public String showMerchantDetails(
				@Valid @ModelAttribute("registerMerchant") Merchant mert,BindingResult result) {
			if(!result.hasErrors()) {			
				final String uri="http://localhost:8081/RestApp/api/v1/userMerchant";
				RestTemplate restTemplate=new RestTemplate();
			restTemplate.postForEntity(uri,mert,Merchant.class);			
			}
			return "redirect:login";
		}
		
		
	@RequestMapping("/signupdone")
	public String signUpButtonClick()
	{
		return "login";
	}
	
	
	@RequestMapping("/MerchantLogged")
	public String validateMerchantLogin(ModelMap map, 
			@RequestParam("emailId") String emailId,
			@RequestParam("password") String password,
			HttpSession session)
	{
		
		final String uri="http://localhost:8081/RestApp/api/v1/merchantLogin/{email}/{password}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String,Object> param = new HashMap<>();
		param.put("email", emailId);
		param.put("password", password);
	    Merchant merchant = restTemplate.getForObject(uri, Merchant.class,param);	
		
	    if(merchant==null) {
	    	return "redirect:termsandconditions";
	    }
		return "redirect:login";
	}
	
	
	@RequestMapping("/CustomerLogged")
	public String loginCustomer()
	{
		return "login";
	}
	
	
	
	@PostMapping("/AdminLogged")
	public String validateAdminLogin(ModelMap map, 
			@RequestParam("email") String adminId,
			@RequestParam("password") String adminPwd,
			HttpSession session) {
		
		final String uri="http://localhost:8081/RestApp/api/v1/adminLogin/{email}/{password}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String,Object> param = new HashMap<>();
		param.put("email", adminId);
		param.put("password", adminPwd);
	    Admin admin = restTemplate.getForObject(uri, Admin.class,param);	
		
	    if(admin==null) {
	    	return "redirect:termsandconditions";
	    }
		return "redirect:login";
	}
	
	
	@PostMapping("/CustomerLogged")
	public String validateCustomerLogin(ModelMap map, 
			@RequestParam("emailId") String emailId,
			@RequestParam("password") String password,
			HttpSession session) {
		
		final String uri="http://localhost:8081/RestApp/api/v1/customerLogin/{email}/{password}";
		RestTemplate restTemplate=new RestTemplate();
		Map<String,Object> param = new HashMap<>();
		param.put("email", emailId);
		param.put("password", password);
	    Customer customer = restTemplate.getForObject(uri, Customer.class,param);	
		
	    if(customer==null) {
	    	return "redirect:termsandconditions";
	    }
		return "redirect:login";
	}


}
