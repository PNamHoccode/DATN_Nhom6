package asm2.com.dao;



import org.springframework.data.jpa.repository.JpaRepository;

import asm2.com.entity.Size;

public interface SizeDAO extends JpaRepository<Size, Integer>{

	Size getByProductId(Integer id);


}
