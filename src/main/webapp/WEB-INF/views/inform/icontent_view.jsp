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
<h2 style="text-align: center;">icontent_view</h2>
<hr align="center" style="border: solid 3px black; width: 60%;" />
<br /><br />
<form action="imodify_view?ino=${icontent_view.ino }" method="post">
<input type="hidden" name="" value="" />

	<div style="margin-left: auto; margin-right: auto; width: 60%; border: solid 2px gray;
				border-radius: 2em;">
		<h3 style="text-align: center;">${icontent_view.ititle }</h2>
		<br />
		<ul>
			<li style="text-align: left; list-style: none;">등록일 :${icontent_view.idate } </li>
			<li style="text-align: left; list-style: none;">조회수 :${icontent_view.ihit } </li>			
		</ul>
	</div>
<br />

<div  style="margin-left: auto; margin-right: auto; width: 60%;">
	<img style="width: 400px; height: 300px;" 
	src="../resources/upload/${icontent_view.ifilesrc }" alt="파일" />
	<br />
	<p> ${icontent_view.icontent }</p>
</div>
<br />
<hr align="center" style="border: solid 1px black; width: 60%;" />
<br />
<div style="margin-left: auto; margin-right: auto; width: 60%;">
	<input type="submit" value="수정" /> &nbsp;
	<a href="idelete?ino=${icontent_view.ino }">삭제</a> &nbsp;
	<a href="../inform/iList">목록</a> &nbsp;
</div>
</form>
</body>
</html>