package com.hta.book.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hta.book.repository.BookDto;
import com.hta.book.repository.BookandRentalDto;
import com.hta.book.service.BookService;

@Controller
public class BookResController {
	private BookService bookService;
	
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping(value="/res.book", method=RequestMethod.GET)
	public String reshandle(@ModelAttribute BookandRentalDto infodto, String name, int book_num){
		System.out.println(book_num);
	
		infodto.setMember_email(name);
		infodto.setBook_num(book_num);
		bookService.bookres(book_num, infodto);
	
		return "redirect:myrental.book";
		
	}
	
	
}
