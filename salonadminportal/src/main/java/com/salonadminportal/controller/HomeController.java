package com.salonadminportal.controller;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.salonadminportal.domain.security.PasswordResetToken;
import com.salonadminportal.service.impl.UserSecurityService;
import com.salonadminportal.domain.OwnerDetails;
/*import com.salonadminportal.domain.User;*/
import com.salonadminportal.domain.security.Role;
import com.salonadminportal.domain.security.OwnerRole;
import com.salonadminportal.service.OwnerService;
import com.salonadminportal.utility.SecurityUtility;


@Controller
public class HomeController {

	
	@Autowired
	OwnerService ownerService;
	

	@Autowired
	UserSecurityService userSecurityService;


	@GetMapping(value= "/")
	public String index(){
		
		 return "salonadmin/services";
 
	}
	
	@GetMapping(value="/addSalon")
	public String getStarted(Model model){
		OwnerDetails ownerDetails = new OwnerDetails();
		model.addAttribute("ownerDetails", ownerDetails);
		
		
		return "salonadmin/addSalon";
	}
	
	@RequestMapping(value="/newOwner", method = RequestMethod.POST)
	public String newUserPost(@ModelAttribute("ownerDetails") OwnerDetails ownerDetails,
			
			@ModelAttribute("username") String username,
			HttpServletRequest request,
			Model model
			) throws Exception{
		
		

		
		/*if (ownerService.findByUsername(username) != null) {
			model.addAttribute("usernameExists",true);
			
			return "redirect:/addSalon";
		}*/
		
		if (ownerService.findByUsername(username) != null) {
			model.addAttribute("emailExists", true);
			
			return "redirect:/addSalon";
		}
		
		
		
		
		
		
		Role role = new Role();
		role.setRoleId(1);
		role.setName("ROLE_OWNER");
		Set<OwnerRole> ownerRoles = new HashSet<>();
		ownerRoles.add(new OwnerRole(ownerDetails, role));
		ownerService.createUser(ownerDetails, ownerRoles);
		
		return "redirect:/addSalon";
	}
	
	
	@RequestMapping("/newUser")
	public String newUser(Locale locale, @RequestParam("token") String token, Model model) {
		PasswordResetToken passToken = ownerService.getPasswordResetToken(token);

		if (passToken == null) {
			String message = "Invalid Token.";
			model.addAttribute("message", message);
			return "redirect:/badRequest";
		}

		OwnerDetails user = passToken.getUser();
		String username = user.getUsername();

		OwnerDetails ownerDetails = userSecurityService.loadUserByUsername(username);

		Authentication authentication = new UsernamePasswordAuthenticationToken(ownerDetails, ownerDetails.getPassword(),
				ownerDetails.getAuthorities());
		
		
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		model.addAttribute("ownerDetails", ownerDetails);

		//model.addAttribute("classActiveEdit", true);
		
		return "salonadmin/myProfile";
	}


	
}
