package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CapstoreController {

	@RequestMapping("/CapStoreAfterLogin")
	public String capStoreAfterLogin() {
		
		return "CapStoreAfterLogin";
	}
	
	@RequestMapping("/CapStoreHome_full")
	public String capStoreHomeFull() {
		
		return "CapStoreHome_full";
	}
	
	@RequestMapping("/CapStoreHome")
	public String capStoreHome() {
		
		return "CapStoreHome";
	}
	
	@RequestMapping("/Page1_full")
	public String page1() {
		
		return "Page1_full";
	}
	
	@RequestMapping("/product")
	public String product() {
		
		return "product";
	}
	
	@RequestMapping("/Product_full")
	public String productFull() {
		
		return "Product_full";
	}
	
}
