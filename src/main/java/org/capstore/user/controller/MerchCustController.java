package org.capstore.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MerchCustController {
	 @RequestMapping("/merchantChat")
	    public String index(HttpServletRequest request, Model model) {
	        String username = (String) request.getSession().getAttribute("username");
	 
	        
	        model.addAttribute("username", username);
	 
	        return "MerchantChat";
	    }
	 
	 @RequestMapping("/customerChat")
	    public String index1(HttpServletRequest request, Model model) {
	        String username = (String) request.getSession().getAttribute("username");
	 
	        
	        model.addAttribute("username", username);
	 
	        return "CustomerChat";
	    }
	 
	 

		/*@GetMapping("/delete/{pilotId}")
		public String deletePilot(@PathVariable("pilotId") Integer pilotId) {
			//pilotService.delete(pilotId);
			
			final String uri="http://localhost:8081/PilotRestApp/api/v1/pilots/{pilotId}";
			RestTemplate restTemplate=new RestTemplate();
			
			java.util.Map<String, Object> params=new HashMap<>();
			params.put("pilotId", pilotId);
			//params.put("pilotName", "tom");
			
			restTemplate.delete(uri,params);
			
			return "redirect:/pilotForm";
		}
		*/
}
