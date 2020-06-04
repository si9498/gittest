<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center;">qcontent_view</h2>
<hr align="center" style="border: solid 3px #ADFF2F; width: 60%;" />
<br /><br />
<form action="qmodify_view?qno=${qcontent_view.qno }" method="post">
<input type="hidden" name="" />
<div style="margin-left: auto; margin-right: auto; width: 60%; border: solid 2px gray; 
			border-radius: 1em;">
	<br />		
	<h3 style="text-align: center;">${qcontent_view.qtitle }</h3>
	<hr style="border: solid 1px darkgray;" width=90%;" />			
	<ul>
			<li style="text-align: left; list-style: none;">등록일 :${qcontent_view.qdate } </li>
			<li style="text-align: left; list-style: none;">작성자 :${qcontent_view.qwriter } </li>			
	</ul>
	
</div>
<br />
<div style="margin-left: auto; margin-right: auto; width: 60%; height: 250px; 
border: solid 2px gray; border-radius: 1em;" >
<br />
	<p style="text-align:center;"> ${qcontent_view.qcontent }</p>
</div>
<br /><br />
<hr align="center" style="border: solid 1px black; width: 60%;" />
<br />
<c:if test="${not empty qcontent_view.qrcontent }">
<div style="margin-left: auto; margin-right: auto; width: 60%; height: 100px; 
border: solid 2px gray; border-radius: 1em;" >
<br />
	<p style="text-align:center;"> ${qcontent_view.qrcontent }</p>
</div>
<br />
</c:if>



<div style="margin-left: auto; margin-right: auto; width: 60%;">
	<input type="submit" value="수정" /> &nbsp;
	<a href="qdelete?qno=${qcontent_view.qno }">삭제</a> &nbsp;
	<a href="../question/qList">목록</a> &nbsp;
	<a href="qreply_view?qno=${qcontent_view.qno }">답변</a> &nbsp;
</div>
</form>
<div>
	<hr />
</div>
</body>
</html>