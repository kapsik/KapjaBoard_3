package com.kapjaBrothers.springBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public String homePage() {
		System.out.println("HomeController -> homePage");
		return "homePage";
		
	}
}
