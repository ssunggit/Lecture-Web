<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileUpload</title>
</head>
<body>
	<h2>파일 업로드 테스트</h2>
	<!-- 파일 업로드시 옵션추가 enctype="multipart/form-data"  -->
	<form action="uploadInfo.jsp" method="post" enctype="multipart/form-data">
		ID : <input type="text" name="id"><br>
		파일 : <input type="file" name="uploadInfo" size="50"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>