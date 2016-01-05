package com.hta.book.service;

import java.sql.SQLException;
import java.util.List;

import com.hta.board.repository.BoardDto;
import com.hta.book.repository.BookDto;


public interface BookService {

		//책 추가
		public void bookinput(BookDto dto) throws SQLException;
		//전체 출력리스트
		public List getList() throws SQLException;
		//책보기
		public BookDto findBynum(int book_num);
		//오늘날짜만 출력
		public List todayList() throws SQLException;
		//삭제
		public void bookdelete(int book_num);
		//수정
		public void updatebook(BookDto dto);
		//조건검색
		public List bookrental();
		
		public List samelist(String book_title);
		
}