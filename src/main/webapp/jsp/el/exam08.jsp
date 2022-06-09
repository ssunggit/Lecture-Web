<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO();
	
	b.setTitle("성공");
	
	BoardVO[] boardList = {b};
	
	pageContext.setAttribute("boardList", boardList);
	
	
	
	Map<String, String> m = new HashMap<String, String>();
	m.put("title", "실패");
	
	List<Map> boardList2 = new ArrayList<>();
	boardList2.add(m);

	pageContext.setAttribute("boardList2", boardList2);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	성공/실패? ${ boardList[0].title }<br>
	성공/실패? ${ boardList2[0].title }<br>
</body>
</html>