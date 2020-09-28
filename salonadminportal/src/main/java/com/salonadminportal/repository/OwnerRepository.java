package com.salonadminportal.repository;


import org.springframework.data.repository.CrudRepository;

import com.salonadminportal.domain.OwnerDetails;



public interface OwnerRepository extends CrudRepository<OwnerDetails, Long> {
	
	
	

	OwnerDetails findByUsername(String username);

	/*OwnerDetails findByEmail(String email);*/
	
	
}
