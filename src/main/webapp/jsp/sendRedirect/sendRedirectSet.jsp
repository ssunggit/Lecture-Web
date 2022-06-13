<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<!-- forward 의 경우 요청을 모두 넘기때문에 현재 페이지의 출력부분이 모두 초기화된다.  -->
	<!-- 페이지이동 : 요청을 받은자와 응답하는 자가 달라진다. -->
	<h2>결과화면</h2>
	
	<c:if test="${ param.id == 'admin' }">
		<% 
			response.sendRedirect("admin.jsp"); 
		%>
	</c:if>

	<c:if test="${ param.id ne 'admin' }">
		<% 
			// request.setAttribute("id", request.getParameter("id"));
			response.sendRedirect("user.jsp");
			
			// 공유영역에 등록해도 연결이 끊기기 때문에 파라미터로 넘기는 수 밖에 없다.
			response.sendRedirect("user.jsp?id=" + request.getParameter("id"));
		%>		
	</c:if>
	
</body>
</html>













