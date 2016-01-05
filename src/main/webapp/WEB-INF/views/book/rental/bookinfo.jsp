<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<title>Insert title here</title>
</head>
<body>

	<p>	
			<label>
				도서명 : <br/>
				<input type="text" name="book_title" id="book_title" value="${dto.getBook_title()}"/>
			</label>
		</p>
		<p>
			<label>
				출판사 : <br/>
				<input type="text" name="book_label" id="book_label" value="${dto.getBook_label()}"/>
			</label>
		</p>
		<p>
			<label>
				저자 : <input type="text" name="book_author" id="book_author" value="${dto.getBook_author()}"/>
			</label>
		</p>
		<p>
			<label>
				장르 : <input type="text" name="book_genre" id="book_genre" value="${dto.getBook_genre()}"/>
			</label>
		</p>
		<p>
			<label>
				ISBN : <input type="text" name="book_isbn" id="book_isbn" value="${dto.getBook_isbn()}"/>
			</label>
		</p>
		<p>
			<label>
				파일 :<input type="text" name="book_img" id="book_img"/><br/><br/>
			</label>
		</p>
		<p>
			<label>
				청구기호 :<input type="text" name="book_chunggu" id="book_chunggu" value="${dto.getBook_chunggu()}"/><br/><br/>
			</label>
		</p>
		<p>
			<label>
				소장위치 :<input type="text" name="book_loc" id="book_loc" value="${dto.getBook_loc()}"/><br/><br/>
			</label>
		</p>
		
		<input type="hidden" name="book_num" value="${dto.getBook_num()}"/>
		<br/><br/><br/><br/><br/>
		
		<table border="1">
		<tr>
		<td>순번</td><td>등록번호</td><td>제목</td><td>출판사</td><td>저자</td><td>ISBN</td><td>입고날짜</td>
	</tr>
		<c:forEach items="${list}" var="dto" varStatus="status">
	<tr>
		
		<td><input type="checkbox" name="multbook" value=${dto.book_num }/></td>
		<td>${status.count}</td>
		<td>${dto.book_num }</td>
		<td>${dto.book_title}</td>
		<td>${dto.book_label}</td>
		<td>${dto.book_author}</td>
		<td>${dto.book_isbn}</td>
		<td>${dto.book_imdate}</td>
		<td><input type="button" value="삭제" onclick="Delete(${dto.book_num})"/></td>
		</tr>
	</c:forEach>
		
		
		</table>
		
		
		<input type="submit" value="수정" />
		<input type="reset" value="전부지우기"/>
		<input type="button" value="목록보기" onclick="location.href='success.book'"/>
	</form>
</body>
</html>