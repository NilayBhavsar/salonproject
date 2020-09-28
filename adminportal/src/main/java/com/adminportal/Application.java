package com.adminportal;

/*import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;*/
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*import com.salonadminportal.domain.OwnerDetails;
import com.salonadminportal.domain.security.OwnerRole;
import com.salonadminportal.domain.security.Role;
import com.salonadminportal.service.OwnerService;
import com.salonadminportal.utility.SecurityUtility;
*/
@SpringBootApplication
public class Application /*implements CommandLineRunner*/ {

	/*@Autowired
	OwnerService ownerService;*/

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	/*@Override
	public void run(String... args) throws Exception {
		OwnerDetails ownerDetails = new OwnerDetails();
		ownerDetails.setFirstName("Nilay");
		ownerDetails.setLastName("Bhavsar");
		ownerDetails.setUsername("Nilay");
		ownerDetails.setPassword(SecurityUtility.passwordEncoder().encode("Nilay"));
		ownerDetails.setEmail("nilaybhavsar94@gmail.com");
		Set<OwnerRole> userRoles = new HashSet<>();
		Role role1 = new Role();
		role1.setRoleId(1);
		role1.setName("ROLE_USER");
		userRoles.add(new OwnerRole(ownerDetails, role1));

		ownerService.createUser(ownerDetails, userRoles);

	}
*/
}