package com.hta.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookConditionController {
	@RequestMapping("/condition.book")
	public String condition(){
		return "conditionbook";
		
	}
}
