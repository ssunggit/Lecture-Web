<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadInfo</title>
</head>
<body>
	<%
		// 바이트 형태를 문자형태로 필터링
		// 서비스가 try-catch 안에 들어가기 때문에 예외처리를 안해주어도 오류가 나지 않는다.
		InputStreamReader isr = new InputStreamReader(request.getInputStream(), "utf-8");	
		// 속도 향상을 위해 버퍼 사용
		BufferedReader br = new BufferedReader(isr);
		
		while(true) {
			String buf = br.readLine();
			if(buf == null) break;
			out.write(buf + "<br>");
		}
	%>
</body>
</html>