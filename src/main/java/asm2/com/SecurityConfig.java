package asm2.com;

import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import asm2.com.entity.Account;
import asm2.com.service.AccountService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	AccountService accountService;
	@Autowired
	BCryptPasswordEncoder pe;
	
	//Cung cấp nguồn dữ liệu đăng nhập
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.userDetailsService(username -> {
	        try {
	            Account user = accountService.findById(username);
	            if (user == null) {
	                throw new UsernameNotFoundException(username + " not found!");
	            }
	            String[] roles = user.getAuthorities().stream()
	                    .map(er -> er.getRole().getId())
	                    .collect(Collectors.toList()).toArray(new String[0]);

	            return User.withUsername(username)
	                    .password(user.getPassword()) // mật khẩu đã mã hóa
	                    .roles(roles)
	                    .build();
	        } catch (NoSuchElementException e) {
	            throw new UsernameNotFoundException(username + " not found!");
	        }
	    }).passwordEncoder(pe); // Đảm bảo sử dụng BCryptPasswordEncoder
	}

	
	//Phân quyền sử dụng 
@Override
protected void configure(HttpSecurity http) throws Exception{
	http.csrf().disable();
	http.authorizeRequests()
	 .antMatchers("/home/**").permitAll()
	   .antMatchers("/order/**").authenticated()
	   .antMatchers("/admin/**").hasAnyRole("STAF","DIRE")
	   .antMatchers("/rest/authorities").hasRole("DIRE")
	   .anyRequest().permitAll();
	
	http.formLogin()
	   .loginPage("/security/login/form")
	   .loginProcessingUrl("/security/login")
	   .defaultSuccessUrl("/security/login/success",false)
	   .failureUrl("/security/login/error");
	
	http.rememberMe()
       .tokenValiditySeconds(86400);
	
	http.exceptionHandling()
       .accessDeniedPage("/security/unauthoried");
	
	http.logout()
       .logoutUrl("/security/logoff")
       .logoutSuccessUrl("/security/logoff/success");
	
	
}
	
	//Cơ chế mã hóa mật khẩu
@Bean
public BCryptPasswordEncoder getPasswordEncoder() {
	return new BCryptPasswordEncoder();
}


//Cho phép truy xuất REST API từ bên ngoài (domain khác)
@Override
public void configure(WebSecurity web) throws Exception{
	web.ignoring().antMatchers(HttpMethod.OPTIONS,"/**");
}


}
