package com.adminportal.service;

import java.util.List;


import com.adminportal.domain.OwnerDetails;
import com.adminportal.domain.security.OwnerRole;
import com.adminportal.domain.security.PasswordResetToken;




public interface OwnerService {
	

	/*List<OwnerDetails> findAll();*/

	 List<OwnerDetails> findBystatus();
	
	 OwnerDetails findOne(Long id);
	

	 
	 OwnerDetails save(OwnerDetails ownerDetails);

	void createPasswordResetTokenForUser(OwnerDetails ownerDetails, String token);
	
	PasswordResetToken getPasswordResetToken(final String token);

	//void delete(OwnerRole ownerRole);
	
	
	
	

	
}
