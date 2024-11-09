package asm2.com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import asm2.com.entity.Category;
import asm2.com.entity.Product;
import asm2.com.service.CategoryService;
import asm2.com.service.ProductService;

@Controller
public class IndexController {
	 @Autowired
	   ProductService service;
	   
	   @Autowired
	   CategoryService pca;
		
	
		
	
	@RequestMapping({"/","detail/index"})	
	public String trangchu(Model model   )
	{ 
		 List<Category> category = pca.findALL();
		  model.addAttribute("categorys",category);
		 List<Product> featuredProducts = service.findByDescriptionTrue();
	        model.addAttribute("products", featuredProducts);
	     List<Product> productsfalse = service.findByDescriptionFalse();
	      model.addAttribute("productsfalse", productsfalse);
		 
		 
				
        return "index";
	}
	
	
	

	
}
