package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.SizeDAO;
import asm2.com.entity.Size;

@Service
public class SizeService {
@Autowired
SizeDAO dao;

public Size getByProductId(Integer id) {
	// TODO Auto-generated method stub
	return dao.getByProductId( id);
}


}
