package asm2.com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm2.com.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{

}
