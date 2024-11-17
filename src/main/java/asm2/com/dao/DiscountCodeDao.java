package asm2.com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm2.com.entity.DiscountCode;

public interface DiscountCodeDao extends JpaRepository<DiscountCode, Integer> {

}
