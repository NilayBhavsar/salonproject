package com.salonadminportal.domain;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.salonadminportal.domain.security.Authority;
import com.salonadminportal.domain.security.OwnerRole;

@Entity
public class OwnerDetails implements UserDetails {
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id", nullable = false, updatable = false)
	private Long id;
	
	@Column(name="username", nullable = false, updatable = false)
	private String username;
	private String password;
	private String ownername;
	
	private String city;
	private String address;
	private boolean status=false;
	
	
	/*@Column(name="email", nullable = false, updatable = false)
	private String email;*/
	private Long phone;
	private boolean enabled=true;
	
	@OneToMany(mappedBy = "ownerDetails", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JsonIgnore
	private Set<OwnerRole> ownerRoles = new HashSet<>();

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/*public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	*/

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public Set<OwnerRole> getOwnerRoles() {
		return ownerRoles;
	}

	public void setOwnerRoles(Set<OwnerRole> ownerRoles) {
		this.ownerRoles = ownerRoles;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		Set<GrantedAuthority> authorites = new HashSet<>();
		ownerRoles.forEach(ur -> authorites.add(new Authority(ur.getRole().getName())));
		
		return authorites;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	
	@Override
	public boolean isEnabled() {
		return enabled;
	}

	
	

	
		
}
