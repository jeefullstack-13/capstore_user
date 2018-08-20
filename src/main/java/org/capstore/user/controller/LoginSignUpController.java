package org.capstore.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.capstore.user.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class LoginSignUpController {
	
	@RequestMapping("/login")
	public String display()
	{
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
	
	@RequestMapping("/forgot_full")
	public String forgotfull(@Valid @ModelAttribute("customer") Customer email)
	{
		return "forgot_full";
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

	
}
