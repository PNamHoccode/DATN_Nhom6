package asm2.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.dao.AuthorityDAO;
import asm2.com.entity.Account;
import asm2.com.entity.Authority;
import asm2.com.entity.Role;
import asm2.com.service.AccountService;

@Service
public class AccountServicelmpl implements AccountService {
    @Autowired 
    AccountDAO adao;
    @Autowired
    AuthorityDAO authorityDAO;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
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
	@Override
	public void save(Account account) {
	    adao.save(account);
	 // Gán quyền mặc định là "USER"
        Authority authority = new Authority();
        authority.setAccount(account);
        authority.setRole(new Role("CUST")); // Gán role "USER"
        authorityDAO.save(authority);
	}
	

}