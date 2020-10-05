package com.salonadminportal.controller;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

	@GetMapping(value = "/")
	public String index() {

		return "salonadmin/login";

	}

	@GetMapping(value = "/addSalon")
	public String getStarted(Model model) {
		OwnerDetails ownerDetails = new OwnerDetails();
		model.addAttribute("ownerDetails", ownerDetails);

		return "salonadmin/addSalon";
	}

	@RequestMapping(value = "/newOwner", method = RequestMethod.POST)
	public String newUserPost(@ModelAttribute("ownerDetails") OwnerDetails ownerDetails,
			final RedirectAttributes redirectAttributes, @ModelAttribute("username") String username,
			HttpServletRequest request, Model model) throws Exception {

		if (ownerService.findByUsername(username) != null) {

			String message = "User name is already exists";
			redirectAttributes.addFlashAttribute("message", message);

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

		Authentication authentication = new UsernamePasswordAuthenticationToken(ownerDetails,
				ownerDetails.getPassword(), ownerDetails.getAuthorities());

		SecurityContextHolder.getContext().setAuthentication(authentication);

		model.addAttribute("ownerDetails", ownerDetails);

		// model.addAttribute("classActiveEdit", true);

		return "salonadmin/myProfile";
	}

	@RequestMapping("/updateOwnerInfo")
	public String updateOwnerInfo(@ModelAttribute OwnerDetails ownerDetails,
			@ModelAttribute("password") String password,
			@ModelAttribute("newPassword") String newPassword,
		Model model, final RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println(":::::::::::::Update Info ::::::::::::::");
		
		OwnerDetails currentUser= ownerService.findById(ownerDetails.getId());
		
		System.out.println("::::::::::::::::"+ownerDetails.getId()+":::::::::::::::::");
		
		if(currentUser == null) {
			throw new Exception ("User not found");
		}
		
		/*check username already exists*/
		if (ownerService.findByUsername(ownerDetails.getUsername())!=null) {
			if(ownerService.findByUsername(ownerDetails.getUsername()).getId() != currentUser.getId()) {
				
				String message = "User name is already exists";
				redirectAttributes.addFlashAttribute("message", message);
				/*model.addAttribute("usernameExists", true);*/
				return "salonadmin/myProfile";
			}
			
			
			if (newPassword != null && !newPassword.isEmpty() && !newPassword.equals("")){
				BCryptPasswordEncoder passwordEncoder = SecurityUtility.passwordEncoder();
				
				String dbPassword = currentUser.getPassword();
				
				System.out.println(":: :: :: :: :: :: :: :: :: "+dbPassword+ " :: :: ::  :: :: :: :: :: :: ");
				if(passwordEncoder.matches(ownerDetails.getPassword(), dbPassword)){
					currentUser.setPassword(passwordEncoder.encode(newPassword));
				} else {
					
					String message1= "User name is already exists";
					redirectAttributes.addFlashAttribute("message1", message1);
					/*model.addAttribute("incorrectPassword", true);*/
					
					return "salonadmin/myProfile";
				}
		
			}
			ownerDetails.setStatus(true);
			ownerService.save(ownerDetails);
		
		
		
	}
		return "salonadmin/myProfile";

	}
	
}
