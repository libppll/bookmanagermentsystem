package com.hta.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
	public String form(LoginCommand loginCommand, @CookieValue(value="remember", required=false) Cookie cook){ //�α��� ������ �̵�, �Ű����� LoginCommand�� ������ ������ email, password, rememberemail�� ���� �ޱ� ���ؼ��̴�...
						//Spring������ �ؿ� LoginCommand loginCommand�� ���� LoginCommand loginCommand�� ���� ��ü�� ó�����ش�.
						//@CookieValue(value="remember", required=false) Cookie cook�̶� �켱 �ؿ� ��Ű ���� �о���� �������ϴ� annotation�̴�., required=false�ʼ��� ,
		
		if(cook != null){//�̸����� ��Ű�� ����Ǿ��־ null���� �ƴϸ� 
			loginCommand.setEmail(cook.getValue());//����Ǿ��ִ� cook�� �̸��� ������ �̸��Ͽ� ����
		}
		
		return "login"; //bundleview��� -->�����: bundleview.properties�� ��� �� ����� �̸��� ���´�.(view-config.xml�� BundleViewResolver�� �����ߴٰ� �����Ͽ�... )
	}
	
	@RequestMapping(value="/login.member", params={"command=submit"})//params={"command=submit"}�̶� parame���� ���� ���� ��û�� ���� ������ �Ҽ� �ִ�.
	public String submit(LoginCommand loginCommand, HttpSession session, HttpServletResponse resp) throws IOException{ //�α��� ���������� �Էµ� �� ����
		try{															//HttpServletResponse�� ����� ������ �Ѱ��ٷ���
			resp.setContentType("text/html;charset=utf-8"); 
			
			Member result = memberService.authenticate(loginCommand.getEmail(), loginCommand.getPassword());//�α����� �̸���,��� ����
			System.out.println("�α���:"+loginCommand.getEmail());
			if(result != null){ // ���� null�ƴѰ��
				session.setAttribute("name", result.getMember_name()); //�̸��� seesion�� ���� ���� �α��� �����ߴ��� �̸��� ����ϱ����ؼ�...
				session.setAttribute("email", result.getMember_email());//�н����� ������ ���� �̶� ���ǰ��� email�� �����ؾ��Ѵ�. email�� mybatis���� ��� ���� ������Ʈ�� ������ �Ǳ⶧���� �ʿ��Դ�.
				System.out.println("�α��ν� �������:"+result.getMember_email());
			}
		}
		catch(IdPasswordNotMachingException err){
			PrintWriter out = resp.getWriter();     
			out.println("<script>alert('���̵�� ��й�ȣ�� ����� �Է����ּ���!');</script>");
			out.flush();
			return "login";
		}
		
		//���⼭ �̸����� ��Ű�� ������ �Ѵ�.(�̸��� ����ϱ�)
		Cookie rememberCook= new Cookie("remember", loginCommand.getEmail()); //��Ű�� remember�̸����� ����
		if(loginCommand.isRememberEmail()){//loginCommand ��, dto�� isRememberEmail()����Ѵ�.
			rememberCook.setMaxAge(60*60*24*30);//��Ű�� �������� �������� ����������Ѵ�. �������ϸ� ������ �������� ���� ���� �������.
		}
		else{
			rememberCook.setMaxAge(0);
		}
		resp.addCookie(rememberCook);//����� �������� �����ش�.
		return "loginSuccess";
	}
}