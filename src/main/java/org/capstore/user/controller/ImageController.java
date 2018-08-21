package org.capstore.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ImageController {


	@RequestMapping("/imagefinal")
	public String getImageFinal() {
		return "imagefinal";
	}
	
	@RequestMapping("/imagemain")
	public String getImageMain() {
		return "imagemain";
	}
	
}
