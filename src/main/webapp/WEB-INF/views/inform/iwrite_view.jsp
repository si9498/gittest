<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center;">iwrite_view</h2>
<hr align="center" style="border: solid 3px black; width: 60%;" />

<form action="iwrite" method="post" enctype="multipart/form-data">
	<table style="margin-left: auto; margin-right: auto;">
		<tr>
			<td>제목</td>
			<td><input type="text" name="ititle" size="50" /></td>
		</tr>
		
		<tr>
			<td>첨부</td>
			<td><input type="file" name="file" size="50" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="icontent"  cols="50" rows="5"></textarea> </td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록" />
				<a href="../inform/iList">취소</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>