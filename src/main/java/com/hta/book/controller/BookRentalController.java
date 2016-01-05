package com.hta.book.controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hta.book.service.BookService;
@Controller
public class BookRentalController {
	private BookService bookService;
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	@RequestMapping("/rental.book")
	public  ModelAndView pageHandler(){
		
		ModelAndView mav = new ModelAndView("bookrental");
		try {

			List list = bookService.bookrental();
			
			mav.addObject("list", list);
		} catch (Exception err) {
			System.out.println("ListController:pageHandler():" + err);
		}
		
		return mav;
		
	}
}
