package asm2.com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm2.com.entity.Account;
import asm2.com.entity.Authority;




public interface AuthorityDAO extends JpaRepository <Authority, Integer> {
  @Query("SELECT DISTINCT a FROM Authority a WHERE a.account IN ?1")
	List<Authority> authoritiesOf(List<Account> accounts);
 


}