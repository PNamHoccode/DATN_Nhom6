package asm2.com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.ProductDAO;
import asm2.com.entity.Product;

@Service
class ProductServiceImpl {
    @Autowired
    ProductDAO pdao;
}
