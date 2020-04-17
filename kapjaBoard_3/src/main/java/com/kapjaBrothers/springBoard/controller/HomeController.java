package com.kapjaBrothers.springBoard.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kapjaBrothers.springBoard.entity.membersData;
import com.kapjaBrothers.springBoard.service.memberService;
import com.kapjaBrothers.springBoard.service.memberServiceImpl;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public String homePage() {
		System.out.println("HomeController -> homePage");
		return "home/homePage";
		
	}
	
	@RequestMapping(value = "/kapjaJoinPage",method = RequestMethod.GET)
	public String join() {
		System.out.println("HomeController -> join");
		
		return "home/registerPage";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/idCheck",method = RequestMethod.POST)
	public int idCheck(HttpServletRequest request) {
		System.out.println("HomeController -> idCheck");
		String userId = request.getParameter("userId");
		System.out.println(userId);
		memberService ms = new memberServiceImpl();
		
		int result = 0;
		
		if(ms.idCheck(userId) != 0) {
			result = 1;
		}
		
		System.out.println("controller -> idCheck = "+result);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/emailCheck", method = RequestMethod.POST)
	public int emailCheck(HttpServletRequest request){
		System.out.println("HomeController->emailCheck");
		String email = request.getParameter("userEmail");
		memberService ms = new memberServiceImpl();
		
		int result = 0;
		
		if(ms.emailCheck(email) != 0) {
			result = 1;
		}
		
		return result;
	}
	
	
	
	
	@RequestMapping(value = "/kapjaJoin", method = RequestMethod.POST)
	public String memberJoin(Model model, membersData mData) {
		System.out.println("HomeController -> memberJoin");
		System.out.println(mData);
		return null;
	}


}
