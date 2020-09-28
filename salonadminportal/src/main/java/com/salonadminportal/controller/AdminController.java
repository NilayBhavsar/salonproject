package com.salonadminportal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	
	
	@GetMapping(value="/adminportal")
	public String adminportal(){
		
		return "admin/index";
	}
	
}
