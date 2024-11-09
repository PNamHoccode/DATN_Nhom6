package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.CommentDAO;
import asm2.com.entity.Product;
import asm2.com.entity.Comment;

@Service
public class CommentService {
 @Autowired
 CommentDAO dao;

public Comment getByProductId(Integer id) {
	// TODO Auto-generated method stub
	return dao.getByProductId( id);
}



 

 
}
