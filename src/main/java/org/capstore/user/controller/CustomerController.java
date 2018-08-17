package org.capstore.user.controller;


import javax.servlet.http.HttpSession;


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
	
	@RequestMapping("/order")
	public String orders() {
		
		return "order";

	}
	

}
