package asm2.com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import asm2.com.dao.ProductDAO;

import asm2.com.entity.Product;

@Service
public class ProductService {
@Autowired
ProductDAO pdao;

public List<Product> findALL() {
	List<Product>  list = pdao.findAll();
	return list;
}



public Product getById(Integer id) {
	Product product = pdao.findById(id).get();
	return product;
}


public Product findById(Integer id) {
	Product product = pdao.findById(id).get();
	return product;
}
public List<Product> findByNameContaining(String name) {
    return pdao.findByNameContaining(name);
}


public List<Product> findByCategoryId(String cid) {
	 // Tạo List findByCategoryId có tên cid thông qua DAO
	return pdao.findByCategoryId(cid);
}



public List<Product> findByPriceBetween(double minPrice, double maxPrice) {
	// TODO Auto-generated method stub
	return pdao. findByPriceBetween(minPrice,maxPrice);
}






public List<Product> findByDescriptionTrue() {
	// TODO Auto-generated method stub
	return pdao.findByDescriptionTrue();
}



public List<Product> findByDescriptionFalse() {
	// TODO Auto-generated method stub
	return pdao.findByDescriptionFalse();
}



public Product create(Product product) {
	// TODO Auto-generated method stub
	return pdao.save(product);
}



public Product update(Product product) {
	// TODO Auto-generated method stub
	return pdao.save(product);
}



public void  detele(Integer id) {
	// TODO Auto-generated method stub
	 pdao.deleteById(id);
}























}








	

