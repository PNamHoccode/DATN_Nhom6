package asm2.com.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;



import asm2.com.dao.AccountDAO;
import asm2.com.dao.OrderDAO;
import asm2.com.dao.OrderDetailDAO;
import asm2.com.dao.StatustDAO;
import asm2.com.entity.Account;
import asm2.com.entity.Order;
import asm2.com.entity.OrderDetail;
import asm2.com.entity.Statust;
import asm2.com.service.AccountService;
import asm2.com.service.OrderService;

@Service
public class OrderServicelmpl implements OrderService {
    @Autowired 
   OrderDAO dao;
    
    @Autowired
    OrderDetailDAO ddao;

   @Autowired
   StatustDAO d;
	@Override
	public Order create(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		
		Order order = mapper.convertValue(orderData, Order.class);
		
		 if (order.getStatust() == null) {
		        order.setStatust(getDefaultStatust()); // Hàm này cần được triển khai để trả về giá trị mặc định
		    }
		
		dao.save(order);
		
		

		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {};
	
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type )
				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
		
		ddao.saveAll(details);
        
		
		return order;
	}
	private Statust getDefaultStatust() {
	    // Triển khai logic để trả về giá trị mặc định cho statust
	    // Ví dụ: return statustRepository.findById(1L).orElse(null);
	    return d.findById(1L).orElse(null);
	}

	@Override
	public Order findById(Long id) {
		
		return dao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername( username);
	}


	public List<Order> getAllOrders() 
	{
		
		return dao.findAll();
	}

	@Override
	public List<Order> findALL() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Order update(Order order) {
		// TODO Auto-generated method stub
		return dao.save( order);
	}

	



	


	
    
  
}