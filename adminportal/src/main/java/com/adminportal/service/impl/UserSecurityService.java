package com.adminportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.adminportal.domain.OwnerDetails;
import com.adminportal.domain.security.PasswordResetToken;
import com.adminportal.repository.OwnerRepository;
import com.adminportal.repository.PasswordResetTokenRepository;

@Service
public class UserSecurityService implements UserDetailsService{
	
	@Autowired
	private OwnerRepository ownerRepository;
	

	
	@Override
	public OwnerDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		OwnerDetails user = ownerRepository.findByUsername(username);
		
		if(null == user) {
			throw new UsernameNotFoundException("Username not found");
		}
		
		return user;
	}

	

	

}
