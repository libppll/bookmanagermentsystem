package com.hta.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hta.book.repository.BookDto;
import com.hta.book.repository.RentalInfoDto;
import com.hta.book.service.BookService;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

@Controller
public class RentalBookController {
	private BookService bookService;
	
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping("/rental.book")
	public String rentalhandle(@ModelAttribute int book_num, String name,  RentalInfoDto infodto){
		System.out.println(book_num);
		System.out.println(infodto.getMember_email());
		System.out.println(name);
		bookService.bookrental(book_num, infodto);
	
		return "redirect:success.book";
		
	}
	
	
}
