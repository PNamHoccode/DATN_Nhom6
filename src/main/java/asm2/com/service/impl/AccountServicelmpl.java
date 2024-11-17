package asm2.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.entity.Account;
import asm2.com.service.AccountService;

@Service
public class AccountServicelmpl implements AccountService {
    @Autowired 
    AccountDAO adao;
    
    @Override 
    public Account findById(String username) {
    	return adao.findById( username).get();
    }

	@Override
	public List<Account> getAdministrators() {
		// TODO Auto-generated method stub
		return adao.getAdministrators();
	}

	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return adao.findAll();
	}
}