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
<h2 style="text-align: center;">qreply_view</h2>
<hr align="center" style="border: solid 3px #ADFF2F; width: 60%;" />
<br /><br />
<form action="qreply" method="post">
<input type="hidden" name="qno" value="${qreply_view.qno }" />
<input type="hidden" name="qtitle" value="${qreply_view.qtitle }" />
<input type="hidden" name="qtype" value="${qreply_view.qtype }" />
<input type="hidden" name="qcontent" value="${qreply_view.qcontent }" />
<input type="hidden" name="qgroup" value="${qreply_view.qgroup }" />
<input type="hidden" name="qstep" value="${qreply_view.qstep }" />
<input type="hidden" name="qindent" value="${qreply_view.qindent }" />
<div style="margin-left: auto; margin-right: auto; width: 60%; border: solid 2px gray; 
			border-radius: 1em;">
	<br />		
	<h3 style="text-align: center;">${qreply_view.qtitle }</h3>
	<hr style="border: solid 1px darkgray;" width=90%;" />			
	<ul>
			<li style="text-align: left; list-style: none;">등록일 :${qreply_view.qdate } </li>
			<li style="text-align: left; list-style: none;">작성자 :${qreply_view.qwriter } </li>			
	</ul>
	
</div>
<br />
<div style="margin-left: auto; margin-right: auto; width: 60%; height: 250px; 
border: solid 2px gray; border-radius: 1em;" >
<br />
	<p style="text-align:center;"> ${qreply_view.qcontent }</p>
</div>
<br /><br />
<hr align="center" style="border: solid 1px black; width: 60%;" />
<br />

<div style="margin-left: auto; margin-right: auto; width: 60%; height: 100px; 
border: solid 2px gray; border-radius: 1em;" >
<br />
	<input style="display: block; margin: 0 auto;" 
		type="text" name="qrcontent" size="60" />
</div>
<br />
<div style="margin-left: auto; margin-right: auto; width: 60%;">
	
	<input type="submit" value="답변달기" /> &nbsp;
	<a href="../question/qList">목록</a> &nbsp;
</div>
</form>
<div>
	<hr />
</div>
</body>
</html>