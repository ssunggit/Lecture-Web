<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post방식이기때문에 인코딩
	request.setCharacterEncoding("utf-8");
	
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
	// 유효시간을 입력하지 않은 경우도 있기 때문에 (null) interget.parseInt 불가능
	String cAge = request.getParameter("cAge");
	
	// 쿠키값에 대한 인코딩 
	// encoding
	cName = URLEncoder.encode(cName, "utf-8");
	cValue = URLEncoder.encode(cValue, "utf-8");
	
	// 쿠키생성
	Cookie cookie = new Cookie(cName, cValue);
	
	// 유효시간 설정
	if(cAge != null && cAge.trim().length() > 0){
		// 분단위이기 때문에 60을 곱했다.
		cookie.setMaxAge(Integer.parseInt(cAge) * 60);	
	}	
	
	// 쿠키전송
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set</title>
</head>
<body>
	<h2>쿠키 설정 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>