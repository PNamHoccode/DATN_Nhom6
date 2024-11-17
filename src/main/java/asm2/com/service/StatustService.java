package asm2.com.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import asm2.com.dao.StatustDAO;
import asm2.com.entity.Order;
import asm2.com.entity.Product;
import asm2.com.entity.Statust;




@Service
public class StatustService {
@Autowired
StatustDAO dao;

public List<Statust> findALL() {
	// TODO Auto-generated method stub
	return dao.findAll();
}








	

	
	

}
