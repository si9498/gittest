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
<h2 style="text-align: center;">qwrite_view</h2>
<hr align="center" style="border: solid 3px #ADFF2F; width: 70%;" />

<form action="qwrite" method="post">
	
	<table style="margin-left: auto; margin-right: auto; width: 70%;">
		<tr>
			<td >문의 유형</td>
			<td colspan="4">
			<select name="qtype">
				<option value="all">전체</option>
				<option value="modi">정보수정</option>
				<option value="service">서비스이용</option>
				<option value="insert">구인공고등록</option>
				<option value="write">이력서작성</option>
			</select>
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="qtitle" size="30" /></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="qwriter" size="20" /></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="qcontent"  cols="50" rows="5"></textarea> </td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="문의하기" /> &nbsp;
				<a href="../question/qList"> 취소</a>
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>