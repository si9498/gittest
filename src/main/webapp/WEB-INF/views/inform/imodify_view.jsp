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
<h2 style="text-align: center;">imodify_view</h2>
<hr align="center" style="border: solid 3px black; width: 60%;" />
<br /><br />
<form action="imodify" method="post">
<input type="hidden" name="ino" value="${imodify_view.ino }" />
<table  style="margin-left: auto; margin-right: auto; width: 60%;">
	<tr>
		<td><input type="text" name="ititle" value=" ${imodify_view.ititle }" size="40" /> </td>
	</tr>
	<tr>
		<td style="text-align: left;">등록일 : ${imodify_view.idate }</td>
	</tr>
	<tr>
		 <td style="text-align: right;">조회수 : ${imodify_view.ihit }</td>
	</tr>
	<tr>
		<td><hr align="center" style="border: solid 1px gray; width: 100%;" /></td>
	</tr>
	<tr>
		<td>첨부 : ${imodify_view.ifilesrc }</td>
	</tr>
	<tr>
		<td><textarea name="icontent" id="" cols="60" rows="10">${imodify_view.icontent }</textarea></td>
	</tr>
	<tr>
		<td colspan="4">
			<input type="submit" value="수정" /> &nbsp;
			<a href="../inform/iList">취소</a>
		</td>
	</tr>
	

</table>
</form>
</body>
</html>