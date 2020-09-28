package com.salonadminportal.service.impl;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.salonadminportal.domain.security.PasswordResetToken;
import com.salonadminportal.domain.OwnerDetails;

import com.salonadminportal.domain.security.OwnerRole;
import com.salonadminportal.domain.security.PasswordResetToken;
import com.salonadminportal.repository.RoleRepository;
import com.salonadminportal.repository.OwnerRepository;
import com.salonadminportal.repository.PasswordResetTokenRepository;
//import com.salonadminportal.repository.PasswordResetTokenRepository;
import com.salonadminportal.service.OwnerService;

@Service
public class OwnerServiceImpl implements OwnerService {

	private static final Logger LOG = LoggerFactory.getLogger(OwnerService.class);
	
	@Autowired
	private OwnerRepository ownerRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	PasswordResetTokenRepository passwordResetTokenRepository;

	@Override
	public OwnerDetails createUser(OwnerDetails ownerDetails, Set<OwnerRole> userRoles) {
		OwnerDetails localUser = ownerRepository.findByUsername(ownerDetails.getUsername());

		if (localUser != null) {
			LOG.info("user {} already exists. Nothing will be done.", ownerDetails.getUsername());
		} else {
			for (OwnerRole ur : userRoles) {
				roleRepository.save(ur.getRole());
			}

			ownerDetails.getOwnerRoles().addAll(userRoles);

			localUser = ownerRepository.save(ownerDetails);
		}

		return localUser;
	}

	@Override
	public OwnerDetails save(OwnerDetails ownerDetails) {
		return ownerRepository.save(ownerDetails);
	}


	@Override
	public OwnerDetails findByUsername(String username) {
		return ownerRepository.findByUsername(username);
	}
	
	@Override
	public OwnerDetails findById(Long id){
		return ownerRepository.findOne(id);
	}
	
	
	@Override
	public void createPasswordResetTokenForUser(OwnerDetails ownerDetails, String token) {
		final PasswordResetToken myToken = new PasswordResetToken(token, ownerDetails);
		passwordResetTokenRepository.save(myToken);
		
	
	}

	@Override
	public PasswordResetToken getPasswordResetToken(final String token) {
		return passwordResetTokenRepository.findByToken(token);
	}
	
	
}
