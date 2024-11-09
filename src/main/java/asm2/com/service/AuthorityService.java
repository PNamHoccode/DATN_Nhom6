package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.dao.AuthorityDAO;
import asm2.com.entity.Account;
import asm2.com.entity.Authority;

@Service
public 	interface AuthorityService {

	

	List<Authority> findAll();

	Authority create(Authority auth);

	List<Authority> findAuthoritiesOfAdministrators();

	void delete(Integer id);


}
