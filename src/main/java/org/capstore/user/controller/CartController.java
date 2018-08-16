package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	@RequestMapping("/cart")
	public String CartPage() {
		
		return "cart";
	}
	
	@RequestMapping("/cartFull")
	public String CartFullPage() {
		
		return "CartFull";
	}
}
