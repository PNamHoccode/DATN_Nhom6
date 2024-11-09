package asm2.com.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import asm2.com.entity.Order;
import asm2.com.entity.Product;
import asm2.com.service.OrderService;
import asm2.com.service.ProductService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/order")
public class OrderRestController {
	@Autowired
	OrderService orderService;
	
	
	@PostMapping()
	public Order create(@RequestBody JsonNode orderData) {
		
		return orderService.create(orderData);
	}
	
	@GetMapping()
	public List<Order> getALL(){
		return orderService.findALL();
	}

	@PutMapping("{id}")
	public Order update(@PathVariable("id") Long id, @RequestBody Order order) {
		return orderService.update(order);
	}
	

}
