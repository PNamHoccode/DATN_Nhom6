package asm2.com.service;

import java.util.stream.Collectors;


import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Service;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;


import asm2.com.dao.AccountDAO;
import asm2.com.entity.Account;

@Service
public class UserService {
@Autowired
AccountDAO dao;
@Autowired
BCryptPasswordEncoder pe;

public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	try {
		Account account = dao.findById(username).get();
		// Tạo UserDetails từ Account
		String password = account.getPassword();
		String[] roles = account.getAuthorities().stream()
			.map(au -> au.getRole().getId())
			.collect(Collectors.toList()).toArray(new String[0]);
		return User.withUsername(username)
				.password(pe.encode(password))
				.roles(roles).build();
	} catch (Exception e) {
		throw new UsernameNotFoundException(username + " not found!");
	}
}

public void loginFromOAuth2(OAuth2AuthenticationToken oauth2){
	// String fullname = oauth2.getPrincipal().getAttribute("name");
	String email = oauth2.getPrincipal().getAttribute("email");
	String password = Long.toHexString(System.currentTimeMillis());
	
	UserDetails user = User.withUsername(email)
			.password(pe.encode(password)).roles("CUST").build();
	UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
	SecurityContextHolder.getContext().setAuthentication(oauth2);
}
}
