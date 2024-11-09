package asm2.com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm2.com.entity.Role;

public interface RoleDAO extends JpaRepository<Role, String> {

}
