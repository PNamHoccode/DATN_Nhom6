package asm2.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.ProductInformationDAO;
import asm2.com.entity.ProductInformation;

@Service
public class ProductInformationService {
@Autowired
ProductInformationDAO dao;

public ProductInformation getByProductId(Integer id) {
	// TODO Auto-generated method stub
	return dao.getByProductId(id);
}

}
