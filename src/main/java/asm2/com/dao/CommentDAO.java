package asm2.com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import asm2.com.entity.OrderDetail;
import asm2.com.entity.Product;
import asm2.com.entity.Category;
import asm2.com.entity.Comment;

public interface CommentDAO extends JpaRepository<Comment, Integer>{
	  List<Comment> findByProduct(Product product);

	Comment getByProductId(Integer id);



	
}
