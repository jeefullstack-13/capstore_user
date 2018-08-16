package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CapstoreController {

	@RequestMapping("/CapStoreAfterLogin")
	public String capStoreAfterLogin() {
		
		return "CapStoreAfterLogin";
	}
	@RequestMapping("/CapStoreHomeAfter1")
	public String capStoreHomeFull1() {
		
		return "CapStoreHomeAfter1";
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


	@RequestMapping("/shippingAddressCap")
	public String productFull1() {
		
		return "shippingAddressCap";
	}
	@RequestMapping("/Wishlist_full")
	public String productFull2() {
		
		return "Wishlist_full";
	}
	@RequestMapping("/WishList")
	public String productFull3() {
		
		return "WishList";
	}
	@RequestMapping("/target")
	public String productFull4() {
		
		return "target";
	}
	
	
}
