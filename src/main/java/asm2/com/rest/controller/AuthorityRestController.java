package asm2.com.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import asm2.com.entity.Account;
import asm2.com.entity.Authority;
import asm2.com.entity.Category;
import asm2.com.entity.Product;
import asm2.com.entity.Role;
import asm2.com.service.AccountService;
import asm2.com.service.AuthorityService;
import asm2.com.service.CategoryService;
import asm2.com.service.ProductService;
import asm2.com.service.RoleService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/authorities")
public class AuthorityRestController {
  @Autowired
AuthorityService authorityservice;
  
  @GetMapping
  public List<Authority> getAccounts (@RequestParam("admin") Optional<Boolean> admin){
 	 if(admin.orElse(false)) {
 		 return authorityservice.findAuthoritiesOfAdministrators();
 	 }
 	 return authorityservice.findAll();
 }
  
  @PostMapping
  public Authority post(@RequestBody Authority auth) {
	  return authorityservice.create(auth);
  }
  
  @DeleteMapping("{id}")
public void delete(@PathVariable("id") Integer id) {
	  authorityservice.delete(id);
  }
}