package asm2.com.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import asm2.com.entity.ProductInformation;

public interface ProductInformationDAO extends JpaRepository<ProductInformation,Integer>{

	ProductInformation getByProductId(Integer id);

}
