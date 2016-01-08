package com.hta.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hta.book.repository.BookDto;
import com.hta.book.repository.RentalInfoDto;
import com.hta.book.service.BookService;

@Controller
public class RentalBookController {
	private BookService bookService;
	
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping(value="/rental.book", method=RequestMethod.GET)
	public String deletehandle(@ModelAttribute BookDto dto,  RentalInfoDto infodto){
		System.out.println(dto.getBook_num());
		System.out.println(infodto.getMember_email());
		bookService.bookrental(dto, infodto);
	
		return "redirect:success.book";
		
	}
	
	
}
