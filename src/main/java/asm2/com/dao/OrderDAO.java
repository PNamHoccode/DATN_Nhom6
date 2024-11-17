package asm2.com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm2.com.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {
  @Query("SELECT o FROM Order o WHERE o.account.username=?1")
	List<Order> findByUsername(String username);









	

}
