   package asm2.com.controller;

import java.awt.print.Pageable;
import java.io.File;
import java.io.ObjectInputStream.GetField;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import asm2.com.dao.ProductDAO;
import asm2.com.entity.Category;

import asm2.com.entity.Product;
import asm2.com.service.CategoryService;

import asm2.com.service.ProductService;
import asm2.com.service.SessionService;




@Controller

public class ShopController {
   @Autowired
   ProductService service;
   
   @Autowired
   CategoryService pca;
	
	@Autowired
	SessionService session;
	
	@Autowired
	ProductDAO dao;
 
	@RequestMapping("/product/list")
	public String shop(Model model, @RequestParam("cid") Optional<String> cid, @RequestParam("name") Optional<String> name) {
	    List<Product> list;
	    if (cid.isPresent()) {
	        list = service.findByCategoryId(cid.get());
	    } else if (name.isPresent()) {
	        list = service.findByNameContaining(name.get());
	    } else {
	        list = service.findALL();
	    }

	    // Truyền danh mục vào model
	    List<Category> category = pca.findALL();
	   
	    model.addAttribute("category", category); // Truyền danh mục vào model

	    model.addAttribute("item", list);
	    model.addAttribute("name", name.orElse(""));  // Truyền giá trị của name vào model

	    return "shop";
	}



	
	@RequestMapping("/product/sort")
	public String sort(Model model,@RequestParam("field") Optional<String> field) {
		
	
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort);
		model.addAttribute("item", items);
		return "shop";
	}
	
	
	//Tìm kiếm theo  giá
	@RequestMapping("/product/searchprice")
	//@RequestParam đặt tên cho cái input
	public String searchprice (Model model, @RequestParam("min") Optional<Double> min, @RequestParam("max") Optional<Double> max)
	{
		// Ép kiểu cho nó 
		 	double minPrice = min.orElse(Double.MIN_VALUE);
		 	double maxPrice = max.orElse(Double.MAX_VALUE);
		 	
		 	List<Product> item = service.findByPriceBetween(minPrice, maxPrice);
		 	model.addAttribute("item", item);
		 	  List<Category> category = pca.findALL();
			  model.addAttribute("category",category);
		   return "shop";
	}
	
	@RequestMapping("/product/search-and-page")
	public String searchAndPage(Model model, 
	@RequestParam("name") Optional<String> name
) {
		String na = name.orElse(session.get("name"));
		session.set("name", na);
		
		
		
		return "shop2";
		}
	
	
	
}
