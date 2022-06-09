<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> b = new HashMap<String,String>();
	b.put("no", "1");
	b.put("title", "테스트");
	
	pageContext.setAttribute("board", b);
%>    
<!-- 공유영역에 저장하는 이유는 객체의 라이프 사이클이 길어질 수 있기 때문이다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL에서의 객체 표현 이해_Map</title>
</head>
<body>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	<hr>
	no : <%= ((Map<String,String>)pageContext.getAttribute("board")).get("no") %><br>
	<hr>
	no : ${ board.no }<br>
	title : ${ board.title }<br>
	
	aaa : ${ board.aaa } <br>
</body>
</html>








