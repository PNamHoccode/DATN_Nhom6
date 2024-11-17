package asm2.com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.cdi.JpaRepositoryExtension;

import asm2.com.entity.Account;

public interface AccountDAO extends JpaRepository <Account, String> {
  @Query("SELECT DISTINCT ar.account FROM Authority ar WHERE ar.role.id IN('DIRE','STAF')")
	List<Account> getAdministrators();
  Account findByEmail(String email);

}
