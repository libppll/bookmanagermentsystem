package com.hta.member.controller;

import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;


import com.hta.exception.IdPasswordNotMachingException;
import com.hta.member.repository.LoginCommand;
import com.hta.member.repository.Member;
import com.hta.member.service.MemberService;

@Controller
public class LoginController {
	private MemberService memberService;
	
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/login.member")
	public String form(LoginCommand loginCommand, 
			@CookieValue(value="remember", required=false) Cookie cook){
		if(cook != null){
			loginCommand.setEmail(cook.getValue());
		}
		return "login";
		
		
	}
	//파람값으로 처리
	@RequestMapping(value="/login.member", params={"command=submit"})
	public String submit(LoginCommand loginCommand, HttpSession session, HttpServletResponse resp) throws SQLException{
		try{
			System.out.println("logincontroller :" + loginCommand.getEmail());
			System.out.println("logincontroller :" + loginCommand.getPassword());
			Member result =
					memberService.authenticate(loginCommand.getEmail(), loginCommand.getPassword());
			
			if(result != null){
				//서버에 저장
				session.setAttribute("name", result.getName());
			}
			
			//cook로 이메일 저장
			Cookie rememberCook = new Cookie("remember", loginCommand.getEmail());
			if(loginCommand.isRememberEmail()){
				rememberCook.setMaxAge(60*60*24*30);
			}
			else{
				rememberCook.setMaxAge(0);
			}
			resp.addCookie(rememberCook);
			return "loginSuccess";
		}
		catch(IdPasswordNotMachingException err){
			return "login";
		}
		
	}
}
