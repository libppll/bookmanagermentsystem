package com.hta.member.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hta.board.service.BoardService;
import com.hta.member.repository.Member;
import com.hta.member.repository.RegisterRequest;
import com.hta.member.service.MemberService;

@Controller
public class RegisterController {
	private MemberService memberService;
	
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping(value="/register.member")
	public String handleStep1(){
		return "/member/register/stap1";
	}
	@RequestMapping("/stap2") 
	public String handleStep2(@RequestParam(value="agree", defaultValue="false") Boolean agree){ //defaultValue�뒗 泥댄겕�븞�맆�븣 湲곕낯媛믪쓣 false濡� �븳�떎�뒗 �쑜
		if(!agree){			
			
			return "/member/register/stap1";
		}
		else{
		
			return "stap2";
		}
	}
	/*
	@RequestMapping("/stap3") //BundleViewResolver�궗�슜, �쐞泥섎읆 �뙆�씪誘명꽣瑜� 4媛쒕�� 諛쏆븘���룄 �릺吏�留� �뙆�씪誘명꽣媛� 留롮� 愿�怨꾨줈 dto�삎�깭濡� 媛��졇�삤�뒗寃� �렪�븯�떎.
	public ModelAndView handleStep3(@ModelAttribute RegisterRequest dto){//@ModelAttribute�뒗 dto�벑�쓽 媛앹껜瑜� 二쇰줈 諛쏆븘�삱�븣 �궗�슜
		//System.out.println("dto:"+dto.getName());
		ModelAndView mav = new ModelAndView("stap3");
		mav.addObject("mem", dto);
		return mav;
	}*/
	
	@RequestMapping(value="/stap3")
	public ModelAndView handleStep3(@ModelAttribute Member dto){
		
		
		ModelAndView mav = new ModelAndView("stap3");
		try {
			
			mav.addObject("dto", dto);
			memberService.write(dto);
			
		} catch (Exception err) {
			System.out.println("!!!!!!writeErrorMessage!!!!!:"+ err);
			
		}
		return mav;
		
		
	}
}
