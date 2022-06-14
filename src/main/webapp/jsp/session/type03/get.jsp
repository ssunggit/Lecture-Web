<%@page import="kr.ac.kopo.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get</title>
</head>
<body>
	<!-- 세션을 지우고 null일 경우 에러 -->
	<!-- null처리 -->
	<%
		if(member != null){
	%>
	설정된 ID : <%= member.getId() %> <br>
	<%
		}
	%>
	설정된 ID : ${ sessionScope.member.id } <br>
	<%-- 설정된 ID : ${ id } <br> --%>
	설정된 PASSWORD : ${ member.password } <br>
	
	<a href="remove.jsp">세션 삭제</a>
</body>
</html>