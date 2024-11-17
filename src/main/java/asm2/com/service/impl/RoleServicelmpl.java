package asm2.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.AccountDAO;
import asm2.com.dao.RoleDAO;
import asm2.com.entity.Account;
import asm2.com.entity.Role;
import asm2.com.service.AccountService;
import asm2.com.service.RoleService;

@Service
public class RoleServicelmpl implements RoleService {
    @Autowired 
    RoleDAO adao;
    

@Override
public List<Role> findAll() {
	// TODO Auto-generated method stub
	return adao.findAll();
}
}