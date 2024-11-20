package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.entity.Account;


@Service
public interface AccountService {

	Account findById(String username);

	List<Account> getAdministrators();

	List<Account> findAll();
	void save(Account account);
	

 
	
  
  
  
}
