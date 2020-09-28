package com.adminportal.utility;

import java.util.Locale;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;


import com.adminportal.domain.OwnerDetails;



@Component
public class MailConstructor {
	@Autowired
	private Environment env;
	
	
	
	public SimpleMailMessage constructResetTokenEmail(
			String contextPath, Locale locale, String token, OwnerDetails user, String password
			) {
		
		String url = contextPath + "/newUser?token="+token;
		String message = "\nPlease click on this link to verify your email and edit your personal information. Your password is: \n"+password;
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(user.getUsername());
		email.setSubject("Salon Store  - New User");
		email.setText(url+message);
		email.setFrom(env.getProperty("support.email"));
		return email;
		
	
	
	
		
	
	}
}
