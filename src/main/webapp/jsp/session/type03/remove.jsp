<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* session.removeAttribute("member"); */
	
	// 세션에 등록되있는 객체 한번에 지움
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remove</title>
</head>
<body>
	<h2>세션 삭제 완료</h2>
	<a href="get.jsp">세션 정보 확인</a>
</body>
</html>