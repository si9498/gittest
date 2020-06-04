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
<h2 style="text-align: center;">fmodify_view</h2>
<hr align="center" style="border: solid 3px black; width: 60%;" />
<br /><br />
<form action="fmodify" method="post">
<input type="hidden" name="fno" value="${fmodify_view.fno }" />
<table  style="margin-left: auto; margin-right: auto; width: 60%;">
	<tr>
		<td><input type="text" name="ftitle" value="제목 : ${fmodify_view.ftitle }" size="40" /> </td>
	</tr>
	<tr>
		<td style="text-align: left;">작성자 : ${fmodify_view.fwriter }</td>
	</tr>
	<tr>
		 <td style="text-align: right;">조회수 : ${fmodify_view.fhit }</td>
	</tr>
	<tr>
		<td><hr align="center" style="border: solid 1px gray; width: 100%;" /></td>
	</tr>
	<tr>
		<td>첨부 : ${fmodify_view.fileSrc }</td>
	</tr>
	<tr>
		<td><textarea name="fcontent" id="" cols="60" rows="10">${fmodify_view.fcontent }</textarea></td>
	</tr>
	<tr>
		<td colspan="4">
			<input type="submit" value="수정" /> &nbsp;
			<a href="../free/fList">취소</a>
		</td>
	</tr>
	

</table>
</form>

</body>
</html>