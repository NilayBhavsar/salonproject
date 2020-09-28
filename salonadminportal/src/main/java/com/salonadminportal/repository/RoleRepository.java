package com.salonadminportal.repository;

import org.springframework.data.repository.CrudRepository;

import com.salonadminportal.domain.security.Role;


public interface RoleRepository extends CrudRepository<Role, Long> {
	Role findByname(String name);
}
