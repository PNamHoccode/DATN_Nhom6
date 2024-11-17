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

import asm2.com.entity.Product;
import asm2.com.service.ProductService;


@CrossOrigin("*")
@RestController
@RequestMapping("/rest/products")
public class ProductRestController {
	@Autowired
	ProductService productservice;

	@GetMapping()
	public List<Product> getALL(){
		return productservice.findALL();
	}
	
	@GetMapping("{id}")
	public Product getOne(@PathVariable("id") Integer id) {
		return productservice.findById(id);
	}
	
	@PostMapping
	public Product create(@RequestBody Product product) {
		return productservice.create(product);
	}
	
	
	@PutMapping("{id}")
	public Product update(@PathVariable("id") Integer id, @RequestBody Product product ) {
		return productservice.update(product);
	}
	
	@DeleteMapping("{id}")
	public void detele(@PathVariable("id") Integer id) {
		 productservice.detele(id);
	}

}
