package asm2.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm2.com.dao.RoleDAO;
import asm2.com.entity.Role;

@Service
public interface RoleService {


public List<Role> findAll();
}
