package com.salonadminportal.service;

import java.util.Set;


import com.salonadminportal.domain.OwnerDetails;

import com.salonadminportal.domain.security.OwnerRole;
import com.salonadminportal.domain.security.PasswordResetToken;



public interface OwnerService {
	OwnerDetails createUser(OwnerDetails ownerDetails, Set<OwnerRole> userRoles) throws Exception;

	OwnerDetails save(OwnerDetails ownerDetails);

	/*OwnerDetails findByEmail(String email);*/
	
	OwnerDetails findById(Long id);

	OwnerDetails findByUsername(String username);

	void createPasswordResetTokenForUser(OwnerDetails ownerDetails, String token);
	
	PasswordResetToken getPasswordResetToken(final String token);
	
	
	
	
	
	
	
	

	
}
