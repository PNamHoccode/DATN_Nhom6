package asm2.com.service;

import java.util.List;

import asm2.com.entity.DiscountCode;

public interface DisscountService {
	 List<DiscountCode> getAllDiscountCodes();
	    DiscountCode getDiscountCodeById(Integer id);
	    DiscountCode createDiscountCode(DiscountCode discountCode);
	    DiscountCode updateDiscountCode(Integer id, DiscountCode discountCode);
	    void deleteDiscountCode(Integer id);
}
