package asm2.com.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import asm2.com.entity.Order;




@Service
public interface OrderService {

	
	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);
	

	List<Order> getAllOrders();

	List<Order> findALL();

	Order update(Order order);



	

	




}
