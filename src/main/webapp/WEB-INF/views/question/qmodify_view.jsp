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
<h2 style="text-align: center;">qmodify_view</h2>
<hr align="center" style="border: solid 3px #ADFF2F; width: 60%;" />
<br /><br />
<form action="qmodify" method="post">
<input type="hidden" name="qno" value="${qmodify_view.qno }"  />
<div style="margin-left: auto; margin-right: auto; width: 60%; border: solid 2px gray; 
			border-radius: 1em;">
	<br />		
	<input style="display : block; margin : 0 auto;" type="text" name="qtitle" 
		value=" ${qmodify_view.qtitle }" size="40" />
	<hr style="border: solid 1px darkgray;" width=90%;" />			
	<ul>
			<li style="text-align: left; list-style: none;">등록일 :${qmodify_view.qdate } </li>
			<li style="text-align: left; list-style: none;">작성자 :${qmodify_view.qwriter } </li>			
	</ul>
	
</div>
<br />
<div style="margin-left: auto; margin-right: auto; width: 60%; height: 250px; 
border: solid 2px gray; border-radius: 1em;" >
<br />
	<textarea style="display: block; margin: 0 auto;" 
	name="qcontent" id="" cols="60" rows="7">${qmodify_view.qcontent }</textarea>
</div>
<br /><br />
<hr align="center" style="border: solid 1px black; width: 60%;" />


<div style="margin-left: auto; margin-right: auto; width: 60%;">
	<input type="submit" value="수정" /> &nbsp;
	<a href="../question/qList">취소</a> &nbsp;
</div>
</form>
</body>
</html>