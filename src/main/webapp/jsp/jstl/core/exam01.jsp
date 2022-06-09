<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core - set, remove </title>
</head>
<body>
	1값을 가지는 변수 cnt 선언(page 공유영역)<br>
	<%-- <%
		pageContext.setAttribute("cnt", "1");
	%> --%>
	<!-- JSTL태그는 시작태그와 종료태그가 반드시 있어야함
	종료태그가 없는 시작태그가 있다면 반드시 < /> 로 적어야한다. -->
	<c:set var="cnt" value="1" />
<%-- 	<%
		int cnt = Integer.parseInt((String)pageContext.getAttribute("cnt"));
		++cnt;
		pageContext.setAttribute("cnt", cnt);
	%>
	cnt에 1증가한 값 : ${ cnt }<br>
 --%>
 
 <%-- cnt에 1 증가 --%>
 <!-- EL 연산자를 사용한다 -->
	<c:set var="cnt" value="1" />
	공유영역에 설정된 cnt변수 : ${ cnt }<br>
	cnt에 1 증가<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" />
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
	cnt변수 삭제<br>
	<c:remove var="cnt" scope="page" />
	cnt : ${ pageScope.cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>

<%--
		JSP				EL					JSTL
	--------------------------------------------------------
		pageContext		pageScope			page
		request			requestScope		request
		session			sessionScope		session
		application		applicationScope	application
 --%>
 <!-- JSP 가 가장많이 해석 
 
 웹브라우저에는 문자열로 날라감
 HTML , CSS, JS
 클라이언트에게는 set태그가 보이지 않음
 해석의 순서 주의!
 -->
 
 