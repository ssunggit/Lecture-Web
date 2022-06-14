<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeForm</title>
</head>
<body>
	<form method="post" action="set.jsp">
		쿠키이름 : <input type="text" name="cName"> <br>
		쿠키값 : <input type="text" name="cValue"> <br>
		<!-- 유효시간을 입력하지 않을 수도 있다 -->
		유효시간(분) : <input type="text" name="cAge"> <br>
		<input type="submit" value="쿠키설정">
	</form>
</body>
</html>