<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String [ ] nameArr = {"홍길동", "임꺽정", "강감찬"};
	pageContext.setAttribute("names", nameArr);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 객체표현 _ 배열</title>
</head>
<body>
	첫번째 이름 : <%= nameArr[0] %><br>
	두번째 이름 : <%= nameArr[1] %><br>
	세번째 이름 : <%= nameArr[2] %><br>
	<hr>
	첫번째 이름 : ${ names[0] }<br>
	두번째 이름 : ${ names[1] }<br>
	세번째 이름 : ${ names[2] }<br>
</body>
</html>