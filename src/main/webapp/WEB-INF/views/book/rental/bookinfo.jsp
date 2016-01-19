<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<title>Insert title here</title>
<script type="text/javascript">

	function Rental(num){
		var ren = document.getElementById("rental").value
		
		if(ren <= 4){
		alert(ren)
		alert("대여처리한다.")
		location.href="rental.book?book_num="+num;
		}
		else{
			alert("대여가능 권수가 넘었습니다. 반납 후 빌려주시길 바랍니다.")
		}
	}
	function Res(num){
		var res = document.getElementById("rental").value
		if(res < 3){
		alert("예약 처리한다.")
		location.href="res.book?book_num="+num;
		}
		else{
			alert("예약가능 권수가 넘었습니다.")
		}
	}
	
</script>
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
		
		
		<br/><br/><br/><br/><br/>
		
		<table border="1">
		<tr>
		<td>순번</td><td>등록번호</td><td>제목</td>
		<td>출판사</td><td>저자</td>
		<td>ISBN</td><td>대여상태</td><td>예약상태</td>
		</tr>
		<c:forEach items="${list}" var="dto" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${dto.book_num }</td>
				<td>${dto.book_title}</td>
				<td>${dto.book_label}</td>
				<td>${dto.book_author}</td>
				<td>${dto.book_isbn}</td>
				<input type="hidden" id="book_title" value="${dto.getBook_title()}">
				<input type="hidden" id="rental" value="${dto.getRentallimit()}">
				<input type="hidden" id="res" value="${dto.getReslimit()}">
				<c:choose>
				<c:when test="${dto.book_status eq true}">
					<td>대여중</td>
				</c:when>
				<c:when test="${name!=null && dto.book_status eq false && dto.book_res eq false}">
				<td><input type="button" value="대여" onclick="Rental(${dto.book_num})"/></td>
				</c:when>
				<c:when test="${dto.book_status eq false && dto.book_res eq true}">
				<td>예약으로 인한 대출불가</td>
				</c:when>
				</c:choose>
				<c:choose>
				<c:when test="${dto.book_res eq true}">
					<td>예약중</td>
				</c:when>
				<c:when test="${name!=null && dto.book_res eq false }">
				<td><input type="button" value="예약" onclick="Res(${dto.book_num})"/></td>
				</c:when>
				</c:choose>
			</tr>
			
		</c:forEach>
		</table>
</body>
</html>