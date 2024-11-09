package asm2.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.OrderDetailDAO;

@Service
public class OrderDetailService {
@Autowired
OrderDetailDAO dao;
}
