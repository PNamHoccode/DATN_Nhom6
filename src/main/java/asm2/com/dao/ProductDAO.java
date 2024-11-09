package asm2.com.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import asm2.com.entity.Product;



public interface ProductDAO extends JpaRepository< Product,Integer> {
	// Lấy theo id của category
  @Query("SELECT l FROM Product l WHERE l.category.id=?1 ")
  // Tạo List findByCategoryId có tên cid
	List<Product> findByCategoryId(String cid);
  
	List<Product> findByPriceBetween(double minPrice,double maxPrice);


	


	
	List<Product> findByDescriptionTrue();

	List<Product> findByDescriptionFalse();

	



	

	

;

	



	

	



	

	
	
	  
  

}
