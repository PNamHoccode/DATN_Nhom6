package asm2.com.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.DiscountCodeDao;
import asm2.com.entity.DiscountCode;
import asm2.com.service.DisscountService;

@Service
public class Disscountcodeserviceimpl implements DisscountService{

@Autowired 
DiscountCodeDao dao;

@Autowired
private DiscountCodeDao discountCodeDao;

@Override
public List<DiscountCode> getAllDiscountCodes() {
    return discountCodeDao.findAll();  // Fetch all discount codes from the database
}

@Override
public DiscountCode getDiscountCodeById(Integer id) {
    Optional<DiscountCode> discountCode = discountCodeDao.findById(id);
    return discountCode.orElse(null);  // Return the DiscountCode if found, else return null
}

@Override
public DiscountCode createDiscountCode(DiscountCode discountCode) {
    return discountCodeDao.save(discountCode);  // Save the DiscountCode to the database
}

@Override
public DiscountCode updateDiscountCode(Integer id, DiscountCode discountCode) {
    if (discountCodeDao.existsById(id)) {
        discountCode.setId(id);  // Ensure the ID is set correctly for updating
        return discountCodeDao.save(discountCode);  // Save the updated DiscountCode
    }
    return null;  // Return null if DiscountCode with the given ID does not exist
}

@Override
public void deleteDiscountCode(Integer id) {
    if (discountCodeDao.existsById(id)) {
        discountCodeDao.deleteById(id);  // Delete the DiscountCode by ID
    }
}

}
