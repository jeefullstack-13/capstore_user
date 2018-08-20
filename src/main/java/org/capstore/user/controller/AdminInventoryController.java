package org.capstore.user.controller;



import java.util.HashMap;

import java.util.Map;

import javax.validation.Valid;

import org.capstore.user.model.Brand;
import org.capstore.user.model.Category;
import org.capstore.user.model.Inventory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class AdminInventoryController {
	
	@RequestMapping("/adminAddCategory")
	public String getAddCategoryPage(ModelMap map) {
		map.put("addCategories", new Category());
		return "adminaddCategories";
	}
	@RequestMapping("/adminAddBrand")
	public String getAddBrandPage(ModelMap map) {
		map.put("addbrands", new Brand());
		return "adminaddBrand";
	}
	@RequestMapping("/adminAddProduct")
	public String getAddProductPage(ModelMap map) {
		final String uri="http://localhost:8084/capstoreApp/api/v1/brands";
		RestTemplate restTemplate=new RestTemplate();
		Brand[] brands=  restTemplate.getForObject(uri, Brand[].class);
		
		
		final String uri_cat="http://localhost:8084/capstoreApp/api/v1/categories";
		Category[] categories=  restTemplate.getForObject(uri_cat, Category[].class);
		
		
		map.put("addprods", new Inventory());
		map.put("brands", brands);
		map.put("categories", categories);
		return "adminaddProduct";
	}
	
	@PostMapping("/addps")
	public String addProduct(
			@Valid @ModelAttribute("addprods") Inventory invent,Model model,
			BindingResult result) {
		
		if(!result.hasErrors()) {
			final String uri="http://localhost:8084/capstoreApp/api/v1/addps";
			RestTemplate rest=new RestTemplate();
			rest.postForEntity(uri, invent, Inventory.class);
			System.out.println(invent);
		}
				return "redirect:/adminAddProduct";
			
	}
	
	@PostMapping("/addbr")
	public String addBrand(
			@Valid @ModelAttribute("addBrands")Brand br,
			BindingResult bresult) {
		if(!bresult.hasErrors()) {
			final String uri="http://localhost:8084/capstoreApp/api/v1/addbr";
			RestTemplate rest=new RestTemplate();
			rest.postForEntity(uri, br, Brand.class);
		}
				return "redirect:/adminAddBrand";
		
	}
	@PostMapping("/addcats")
	public String addCategory(
			@Valid @ModelAttribute("addCategories") Category cg,
			BindingResult cresult) {
		if(!cresult.hasErrors()) {
			final String uri="http://localhost:8084/capstoreApp/api/v1/addcats";
			RestTemplate rest=new RestTemplate();
			rest.postForEntity(uri, cg, Category.class);
		}
				return "redirect:/adminAddCategory";
		
	}
	
	   @RequestMapping("/admininventory/{productName}")
		public String getInventoryForm(@PathVariable ("productName") String productName, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory/{productName}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("productName", productName);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
		}
	   @RequestMapping("/admininventory1/{category1}")
		public String getInventoryForm1(@PathVariable ("category1") String category1, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory1/{category1}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category1", category1);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
		}
	   @RequestMapping("/admininventory2/{category2}")
		public String getInventoryForm2(@PathVariable ("category2") String category2, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory2/{category2}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category2", category2);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
		}
	   @RequestMapping("/admininventory3/{category3}")
		public String getInventoryForm3(@PathVariable ("category3") String category3, ModelMap map) {
		
			
			final String uri="http://localhost:8081/capstoreApp/api/v1/admininventory3/{category3}";
			RestTemplate restTemplate=new RestTemplate();
			Map<String,Object> params=new HashMap<>();
			params.put("category3", category3);
			Inventory[] inventoryList= restTemplate.getForObject(uri, Inventory[].class,params);
			
			
			map.put("inventoryList",inventoryList);
			map.put("Inventory", new Inventory());
			
			return "adminInventoryManagement";
		}
}
