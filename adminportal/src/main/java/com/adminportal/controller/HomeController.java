package com.adminportal.controller;

import java.util.List;

import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.adminportal.domain.OwnerDetails;
import com.adminportal.domain.security.OwnerRole;
import com.adminportal.domain.security.PasswordResetToken;
import com.adminportal.service.OwnerService;
import com.adminportal.service.impl.UserSecurityService;
import com.adminportal.utility.SecurityUtility;
import com.adminportal.utility.MailConstructor;


@Controller
public class HomeController {

	
@Autowired
OwnerService ownerService;

@Autowired
UserSecurityService userSecurityService;

@Autowired
MailConstructor mailConstructor;


@Autowired
private JavaMailSender mailSender;
	
	

	@GetMapping(value= "/")
	public String index(){
		
		 return "admin/index";
 
	}
	
	@GetMapping(value="/ownerRegister")
	public String ownerregister(Model model){
		
		try{
		List<OwnerDetails> ownerDetailsList = ownerService.findBystatus();
		
		for(OwnerDetails ownerDetails : ownerDetailsList){
			
			
			//System.out.println("Owner User Name :::::::::::::"+ownerDetails.getUsername());
		}
		//System.out.println("ownerDetailsList:::::::::::"+ownerDetailsList.get(0));
		
		model.addAttribute("ownerDetailsList", ownerDetailsList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/ownerRegisterTable";
		              
	}
	
	@GetMapping(value="/acceptOwnerReuest")
	public String acceptOwnerReuest(@RequestParam Long id,Model model,HttpServletRequest request){
		
		System.out.println("Controllerrrr::::::::");
		
		OwnerDetails  ownerDetails = ownerService.findOne(id);
		ownerDetails.getUsername();
		
		String user = ownerDetails.getUsername();
		
		String password = SecurityUtility.randomPassword();
		
		String encryptedPassword = SecurityUtility.passwordEncoder().encode(password);
		ownerDetails.setPassword(encryptedPassword);
		
		System.out.println("Owner PassWord ::::::"+ownerDetails.getPassword());
		
		String token = UUID.randomUUID().toString();
		ownerService.createPasswordResetTokenForUser(ownerDetails, token);
		  
		String appUrl = "http://localhost:1010";
		
		System.out.println("App Url ::::::::::::::::::"+appUrl);
		
		SimpleMailMessage email = mailConstructor.constructResetTokenEmail(appUrl, request.getLocale(), token, ownerDetails, password);
		
		
		System.out.println("Mail ::::::::::::::::::"+email);
		
		mailSender.send(email);
		
		ownerDetails.setStatus(true);
		
		ownerService.save(ownerDetails);
		
		//model.addAttribute("emailSent", "true");
	
		
		return "redirect:/ownerRegister";
		
	}
	
	
	@GetMapping("/deleteOwnerReuest")
	public String deleteUser(@RequestParam("id") Long id, Model model, HttpServletRequest request){
		
		
		OwnerDetails  ownerDetails = ownerService.findOne(id);
		System.out.println("Role ID ::::::::::::::::::::"+id);
		ownerDetails.setId(id);
		
		
		
		//System.out.println(ownerRole);
		/*OwnerDetails ownerDetails = new OwnerDetails();
		ownerDetails.setOwnerRoles(ownerRole.getOwnerDetails());
		*/
		
		//this.ownerService.delete(ownerRole);
		
		//ownerService.delete(ownerRole);
		
		//System.out.println("ownerDetails::::::"+ownerDetails.getId());
		
		return "redirect:/ownerRegister";
	}
	

	
}
