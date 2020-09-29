package com.adminportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adminportal.domain.OwnerDetails;
import com.adminportal.domain.security.OwnerRole;
import com.adminportal.domain.security.PasswordResetToken;
import com.adminportal.repository.OwnerRepository;
import com.adminportal.repository.PasswordResetTokenRepository;
import com.adminportal.service.OwnerService;

@Service
public class OwnerServiceImpl implements OwnerService {

	@Autowired
	OwnerRepository ownerRepository;
	
	@Autowired
	PasswordResetTokenRepository passwordResetTokenRepository;

	/*@Override
	public List<OwnerDetails> findAll() {
		
		return (List<OwnerDetails>) ownerRepository.findAll();
	}*/
	
	
	
	
	@Override
	public PasswordResetToken getPasswordResetToken(final String token) {
		return passwordResetTokenRepository.findByToken(token);
	}
	
	@Override
	public List <OwnerDetails> findBystatus(){
		
		List<OwnerDetails> ownerList= (List<OwnerDetails>) ownerRepository.findBystatus();
		
		 return ownerList;
	}

	@Override
	public OwnerDetails findOne(Long id) {
		
		return ownerRepository.findOne(id);
	}

	@Override
	public OwnerDetails save(OwnerDetails ownerDetails) {
		// TODO Auto-generated method stub
		return ownerRepository.save(ownerDetails);
	}

	@Override
	public void createPasswordResetTokenForUser(OwnerDetails ownerDetails, String token) {
		final PasswordResetToken myToken = new PasswordResetToken(token, ownerDetails);
		passwordResetTokenRepository.save(myToken);
		
	}

	/*@Override
	public void delete(OwnerDetails ownerDetails) {
		
		 ownerRepository.delete(ownerDetails);
		
	}*/

	

	/*@Override
	public void delete(OwnerRole ownerRole) {
		
		ownerRepository.delete(ownerRole);
		
	}
*/
	

	


	
	
	
}
