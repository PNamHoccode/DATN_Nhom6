package asm2.com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.CategoryDAO;
import asm2.com.dao.ProductDAO;

@Service
public class CategoryServiceimpl {
	 @Autowired
	    CategoryDAO cdao;
}
