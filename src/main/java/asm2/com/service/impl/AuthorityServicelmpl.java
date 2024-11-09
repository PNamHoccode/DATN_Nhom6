package asm2.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.dao.AuthorityDAO;
import asm2.com.entity.Account;
import asm2.com.entity.Authority;
import asm2.com.service.AccountService;
import asm2.com.service.AuthorityService;

@Service
public class AuthorityServicelmpl implements AuthorityService {
    @Autowired 
    AuthorityDAO adao;
@Autowired
AccountDAO acdao;
	@Override
	public List<Authority> findAll() {
		// TODO Auto-generated method stub
		return adao.findAll();
	}

	@Override
	public Authority create(Authority auth) {
		// TODO Auto-generated method stub
		return adao.save(auth);
	}

	@Override
	public List<Authority> findAuthoritiesOfAdministrators() {
		List<Account> accounts = acdao.getAdministrators();
		return adao.authoritiesOf(accounts);
	}

	@Override
	public void delete(Integer id) {
		
		adao.deleteById(id);
	}

	
   
}