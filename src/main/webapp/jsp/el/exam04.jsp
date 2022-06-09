<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO();

	b.setNo(1);
	b.setTitle("테스트");
	
	// pageContext영역에 객체 등록
	// 이름 : board  값 : 생성된 BoardVO 객체
	pageContext.setAttribute("board", b);
	
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL에서의 객체 표현 이해_자바빈즈</title>
</head>
<body>
	no: <%= b.getNo() %><br>
	no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	<!-- no : 자바빈즈 클래스의 gettter를 의미 -->
	el no : ${ board.no }<br>
	
	title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	el title : ${ board.title }<br>
	<!-- 500 에러 -->
	<%-- aaa : ${ board.aaa } <br> --%>
</body>
</html>














