<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>대출 내역</h3>
<table border="1" class="rental">
	 
	<tr>
		<td>번호</td><td>등록번호</td><td>자료명</td><td>대출일</td>
		<td>반납예정일</td><td>연체일</td><td>연체료</td><td>연장</td>
	</tr>
	<c:forEach items="${list}" var="dto" varStatus="status">
	<tr>
		<td>${status.count }</td>
		<td>${dto.book_num}</td>
		<td>${dto.book_title}</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>