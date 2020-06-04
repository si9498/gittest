<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<h1>이력서 뿌슝빠슝</h1>
<h3>이력서 등록 시 기존의 이력서는 삭제됩니다</h3>
<form action="./../member/resumeupload" enctype="multipart/form-data" method="post">
	첨부 <input type="file" name="file" /> <br />
	<input type="submit" value="등록"/>
</form>
</body>
</html>