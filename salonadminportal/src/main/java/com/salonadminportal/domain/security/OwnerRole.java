package com.salonadminportal.domain.security;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.salonadminportal.domain.OwnerDetails;
import com.salonadminportal.domain.security.Role;

@Entity
@Table(name="owner_role")
public class OwnerRole {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long ownerRoleId;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="owner_id")
	private OwnerDetails ownerDetails;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="role_id")
	private Role role;

	public OwnerRole(){} 
	
	public OwnerRole(OwnerDetails ownerDetails, Role role) {
		this.ownerDetails = ownerDetails;
		this.role = role;
	}

	public Long getOwnerRoleId() {
		return ownerRoleId;
	}

	public void setOwnerRoleId(Long ownerRoleId) {
		this.ownerRoleId = ownerRoleId;
	}

	public OwnerDetails getOwnerDetails() {
		return ownerDetails;
	}

	public void setOwnerDetails(OwnerDetails ownerDetails) {
		this.ownerDetails = ownerDetails;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	
		
	
}
