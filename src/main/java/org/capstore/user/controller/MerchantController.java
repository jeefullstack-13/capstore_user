package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MerchantController {
	
	@RequestMapping("/")
	public String mainPage() {
		
		return "merchant";
	}
	
	@RequestMapping("/home")
	public String homePage() {
		
		return "merchant";
	}
	
	
	@RequestMapping("/inventPage")
	public String inventoryPage() {
		
		return "inventory";
		
	}
	
	@RequestMapping("/myProfile")
	public String myProfilePage() {
		
		return "myprofile";
		
	}
	
	@RequestMapping("/showProduct")
	public String showProduct() {
		
		return "myproductdetails";
		
	}
	
	@RequestMapping("/addProduct")
	public String addProduct() {
		
		return "addproduct";
		
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct() {
		
		return "updateproduct";
		
	}
	
	@RequestMapping("/removeProduct")
	public String remoteProduct() {
		
		return "removeproduct";
		
	}
	
	@RequestMapping("/discount")
	public String discountAndPromo() {
		
		return "discountpromos";
		
	}
	
	@RequestMapping("/summary")
	public String orderSummary() {
		
		return "ordersummary";
		
	}
	
	@RequestMapping("/valretgoods")
	public String validateReturnGoods() {
		
		return "validategoods";
		
	}
	
	
}