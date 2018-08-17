package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	
}
