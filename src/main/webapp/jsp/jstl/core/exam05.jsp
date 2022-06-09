<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"신짱구", "봉미선", "신형만", "신짱아"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length-1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core - forEach 태그, fn</title>
</head>
<body>
	
	이름 배열의 개수 : ${ fn:length(names) } <br>
	<c:forEach begin="0" end="${ fn:length(names)-1 }" var="i">
			${ names[i] }
			<c:if test="${ i ne fn:length(names)-1 }">
				,
			</c:if>
	</c:forEach>
	<br>
	<c:forEach items="${ names }" var="name" varStatus="loop">
		<c:if test="${ not loop.first }">
			,
		</c:if>
		${ name }
	</c:forEach>
<br>

<!-- varStatus 반복을 할때마다 상태를 기억하는 속성 -->
<!-- Loop 아무 이름이나 지어줘도 되고, 반복할때마다 상태를 기억하고 있다. -->
	<c:forEach items="${ names }" var="name" varStatus="loop">
		${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>
	
	<br>
	
	<c:set var="cnt" value="1"/>
	<c:forEach items="${ names }" var="name">
		<c:if test="${cnt ne 1 }">
			,
		</c:if>
		${ name } 
		<c:set var="cnt" value="${ cnt + 1 }"/>
	</c:forEach>
	
	<br>
	
	<c:forEach begin="0" end="${ length }" var="i">
			<c:if test="${ i ne 0 }">
				,
			</c:if>
			${ names[i] }
	</c:forEach>
	
	<br>
	
	<c:forEach begin="0" end="${ length }" var="i">
			${ names[i] }
			<c:if test="${ i ne length }">
				,
			</c:if>
	</c:forEach>
	
	<br>
	
	<c:forEach items="${ names }" var="name">
			${ name } 
	</c:forEach>
	
	<h2>1~10 사이의 정수 출력</h2>
	<c:forEach begin="1" end="10" var="i">
		${ i }
	</c:forEach>
	<br>
	
	년도선택 : 
	<select>
	<!-- forEach 의 경우 역순은 불가능  -->
		<c:forEach begin="1970" end="2022" step="10" var="year">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>