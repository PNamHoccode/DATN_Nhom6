package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import asm2.com.dao.CategoryDAO;
import asm2.com.entity.Category;
import asm2.com.entity.Product;

@Service
public class CategoryService {
@Autowired
CategoryDAO dao;

public List<Category> findALL() {
	
	return dao.findAll();
}

public Object findAll() {
	// TODO Auto-generated method stub
	return null;
}








}
