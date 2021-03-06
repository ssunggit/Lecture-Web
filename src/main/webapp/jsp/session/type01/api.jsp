<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	//jsessionId
	String id = session.getId();
	// 유효시간
	int interval = session.getMaxInactiveInterval();
	
	// 세션의 유효시간 변경 (2초)
	session.setMaxInactiveInterval(2);
	
	int interval2 = session.getMaxInactiveInterval();
	
	// 마지막 접근시간
	long lastTime = session.getLastAccessedTime();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 ID(JSESSIONID) : <%=id %> </h2>
	<!-- 1800초 :  30분 (기본값) -->
	<h2>유효시간 : <%= interval %>초 </h2>
	<!-- 2초마다 session이 바뀜 -->
	<h2>변경된 유효시간 : <%= interval2 %>초 </h2>
	<h2>마지막 접근시간 : <%= sdf.format(new Date(lastTime)) %></h2>
	
</body>
</html>