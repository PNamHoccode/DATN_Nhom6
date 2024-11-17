package asm2.com.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import asm2.com.entity.Account;
import asm2.com.entity.Category;
import asm2.com.entity.Product;
import asm2.com.entity.Role;
import asm2.com.service.AccountService;
import asm2.com.service.CategoryService;
import asm2.com.service.ProductService;
import asm2.com.service.RoleService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
public class AccountRestController {
  @Autowired
 AccountService accountservice;
  
 @GetMapping
 public List<Account> getAccounts (@RequestParam("admin") Optional<Boolean> admin){
	 if(admin.orElse(false)) {
		 return accountservice.getAdministrators();
	 }
	 return accountservice.findAll();
}
}