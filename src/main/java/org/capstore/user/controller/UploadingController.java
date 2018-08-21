package org.capstore.user.controller;


import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

import org.capstore.user.model.Attraction;
import org.capstore.user.model.Customer;
import org.capstore.user.model.Email;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
/**
 * Class Name: UploadinController
 * Author    : Shubhendu Mal
 * Purpose   : To Add Attraction
 *              And send the Mail to customer for Attraction
 * Date      : 20 Aug,2018
 *
 */
@Controller
public class UploadingController {
    public static final String uploadingdir = System.getProperty("user.dir") + "/src/main/resources/static/uploadingdir/";

  
    
    
    @RequestMapping("/")
    public String uploading(Model model) {
        File file = new File(uploadingdir);
        model.addAttribute("files", file.listFiles());
        model.addAttribute("product", new Attraction());
        return "template1";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String uploadingPost(@RequestParam("uploadingFiles") MultipartFile uploadingFiles,
    		@ModelAttribute("product") Attraction product) throws IOException {
    	int imgName=0;
      //  for(MultipartFile uploadedFile : uploadingFiles) {
            File file = new File(uploadingdir + uploadingFiles.getOriginalFilename());
            uploadingFiles.transferTo(file);
            
          
            
            
            String path=file.getPath();
            
           String extenstion= path.substring(path.lastIndexOf('.'), path.length());
            
            //product.setImgUrl("../uploadingdir/" +imgName+".jpg");
            
          //  productDao.save(product);
            
            System.out.println(extenstion);
            
            final String uri="http://localhost:8081/capstoreApp/api/v3/maxId";
			RestTemplate restTemplate=new RestTemplate();
			
			Integer productId=(Integer)restTemplate.getForObject(uri, Integer.class);
            
            //System.out.println("hii");
            //Integer productId=productDao.findMaxProductId();
            
           // System.out.println("pproduct id is"+productId);
           if(productId!=0)
            	imgName=productId+1;
            else
            	imgName=0;
            File file2=new File(uploadingdir+imgName+ extenstion);
            file.renameTo(file2);
            
            
            product.setAttractionUrl("../uploadingdir/" +imgName+ extenstion);
            
            
        	final String uri1="http://localhost:8081/capstoreApp/api/v3/put1";
			RestTemplate restTemplate1=new RestTemplate();
			
		//	ResponseEntity<Pilot> pilot1=
					restTemplate1.postForEntity(uri1,product,Attraction.class);
            
            
            
           // productDao.save(product);
        //}

        return "redirect:show";
    }
    
    
    @RequestMapping("/show")
    public String showProducts(Model model) {
    	
    	//List<Product> products= productDao.findAll();
    	
    	 final String uri="http://localhost:8081/capstoreApp/api/v3/getAll";
			RestTemplate restTemplate=new RestTemplate();
			
			Attraction[] products=
					restTemplate.getForObject(uri,Attraction[].class);
    	model.addAttribute("products", products);
    	return "template2";
    }
    
    
    
    @RequestMapping("/customer")
    public String showCustomers(Model model) {
    	
    	//List<Product> products= productDao.findAll();
    	System.out.println("hello");
    	 final String uri="http://localhost:8081/capstoreApp/api/v3/getAllCustomer";
			RestTemplate restTemplate=new RestTemplate();
			
			Customer[] customers=
					restTemplate.getForObject(uri,Customer[].class);
			System.out.println("hii");
    	model.addAttribute("customers", customers);
    	
    	
    	 final String uri1="http://localhost:8081/capstoreApp/api/v3/getAll";
			RestTemplate restTemplate1=new RestTemplate();
			
			Attraction[] products=
					restTemplate1.getForObject(uri1,Attraction[].class);
 	model.addAttribute("products", products);
    	
    	return "template3";
    }
    
    @RequestMapping("/sendMail")
    public String sendEmail(Model model,@RequestParam("selproduct") Integer id)
    {
    	System.out.println("sendMaikl");
    	System.out.println("id is"+id);

   	 final String uri="http://localhost:8081/capstoreApp/api/v3/getAllCustomer";
			RestTemplate restTemplate=new RestTemplate();
			
			Customer[] customers=
					restTemplate.getForObject(uri,Customer[].class);
   //	model.addAttribute("customers", customers);
   	
    final String uri1="http://localhost:8081/capstoreApp/api/v3/getAttractionById/{id}";
	RestTemplate restTemplate1=new RestTemplate();
	
	java.util.Map<String, Object> params=new HashMap<>();
	params.put("id", id);
	Attraction product=
			restTemplate1.getForObject(uri1,Attraction.class,params);
   	   
    	Email e=new Email();
    	int i;
       for(i=0;i<customers.length;i++)
       {
    	e.setFrom_emailId("admin123@gmail.com");
    	e.setTo_emailId(customers[i].getEmailId());
    	e.setBody(product.getAttractionId()+product.getDescription());
    	e.setDate(new Date());
    	e.setSubject("Attraction");
    	
    	final String uri2="http://localhost:8081/capstoreApp/api/v3/sentMail";
    	RestTemplate restTemplate2=new RestTemplate();
    	
    	restTemplate2.postForEntity(uri2,e,Email.class);
       }
    	model.addAttribute("product", new Attraction());
    	return "template";
    }
    
    
}