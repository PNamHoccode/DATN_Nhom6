package asm2.com.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import asm2.com.entity.Category;
import asm2.com.entity.Product;
import asm2.com.entity.Statust;
import asm2.com.service.ProductService;
import asm2.com.service.StatustService;


@CrossOrigin("*")
@RestController
@RequestMapping("/rest/statust")
public class StatustRestController {
	@Autowired
	StatustService statustservice;
	
	
	
	
	@GetMapping()
	public List<Statust> getALL(){
		return statustservice.findALL();
	}
	
	

}
