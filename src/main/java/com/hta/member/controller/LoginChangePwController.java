package com.hta.member.controller;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.hta.member.repository.LoginChangePwCommand;
import com.hta.member.repository.LoginCommand;
import com.hta.member.repository.Member;
import com.hta.member.service.MemberService;

@Controller
public class LoginChangePwController {
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping("/loginchange.member")
	public String loginChagePageMove(){
		return "loginchage";
	}
	@RequestMapping(value="/loginchange.member", params={"command2=submit2"})
	public String loginChagePW(LoginCommand logincommand, LoginChangePwCommand loginchangepwcommand, HttpSession session){
		//Member result = memberService.pwChage(logincommand.getPassword(), loginchangepwcommand.getNewpassword(), loginchangepwcommand.getNewpasswordcomf());
		return "loginchage";
	}
}
