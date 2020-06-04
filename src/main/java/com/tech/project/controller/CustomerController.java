package com.tech.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	@RequestMapping("customer/faq")
	public String faq() {
		
		return "customer/faq";
		
	}
	
	@RequestMapping("customer/campaign")
	public String campaign() {
		
		return "customer/campaign";
		
	}
	
	@RequestMapping("customer/policy")
	public String policy( ) {
		
		return "customer/policy";
	}

}
