<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user</title>
</head>
<body>
	<!-- sendRedirectSet.jsp?id=sung -->
	<%-- <h2>${ param.id }님 환영합니다</h2> --%>
	
	<!-- 요청을 재발생시키기 때문에 공유영역에 등록하는것이 무의미 -->
	<h2>${ requestScope.id }님 환영합니다</h2>
	
</body>
</html>