<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="resbookcancel.book" method="get">
<table border="1">
	 
	<tr>
		<td>순서</td><td>등록번호</td><td>제목</td><td>책 반납일</td><td>대여자</td>
	</tr>
	<c:forEach items="${list}" var="dto" varStatus="status">
	<tr>
		<td>${status.count }</td>
		<td>${dto.book_num}</td>
		<td>${dto.book_title}</td>
		<td>${dto.renbtal_returndate}</td>
		<td>${dto.member_email}</td>
		
	</tr>
	</c:forEach>
</table>
<input type="submit" value="예약취소" />

</form>

</body>
</html>