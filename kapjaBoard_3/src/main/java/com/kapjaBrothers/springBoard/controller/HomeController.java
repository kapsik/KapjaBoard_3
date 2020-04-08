package com.kapjaBrothers.springBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kapjaBrothers.springBoard.entity.membersData;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public String homePage() {
		System.out.println("HomeController -> homePage");
		return "home/homePage";
		
	}
	
	@RequestMapping(value = "/kapjaJoin",method = RequestMethod.POST)
	public String join(membersData mData, Model model) {
		System.out.println("HomeController -> join");
		System.out.println(mData);
		
		return null;
		
	}
}
