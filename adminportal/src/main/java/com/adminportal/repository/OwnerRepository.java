package com.adminportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.adminportal.domain.OwnerDetails;




public interface OwnerRepository extends CrudRepository<OwnerDetails, Long> {

	@Query(value="FROM OwnerDetails WHERE status = false" )
	public List<OwnerDetails>findBystatus();

	public OwnerDetails findByUsername(String username);
	
	public List <OwnerDetails> findById(Long id);
	
	
	// public void  delete(Long id);

	//public void delete(OwnerRole ownerRole); 
	
	

	
}
