package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
		
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		//session.invalidate();
		return "redirect:/";
	}
}
