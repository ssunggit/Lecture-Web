<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("phone", "010-1234-5678");
	%>

	msg : <%= msg %> <br>
	phone : ${ phone } <br>
	<h2>인클루드 전</h2>
	<h3>파라미터 미설정</h3>
	<c:import url="one.jsp" />
	<h2>인클루드 후</h2>
	
	<hr>
	<h2>인클루드 전</h2>
	<h3>파라미터 설정</h3>	
	<c:import url="one.jsp">
		<c:param name="name" value="ssunge"/>
	</c:import>
	<h2>인클루드 후</h2>
</body>
</html>

