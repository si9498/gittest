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
<h2 style="text-align: center;">fcontent_view</h2>
<hr align="center" style="border: solid 3px black; width: 60%;" />
<br /><br />
<form action="fmodify_view?fno=${fcontent_view.fno }" method="post">
<input type="hidden" name="fno" value="" />

	<div style="margin-left: auto; margin-right: auto; width: 60%; border: solid 2px gray;
				border-radius: 2em;">
		<h3 style="text-align: center;">${fcontent_view.ftitle }</h2>
		<br />
		<ul>
			<li style="text-align: left; list-style: none;">작성자 : ${fcontent_view.fwriter }</li>
			<li style="text-align: left; list-style: none;">조회수 : ${fcontent_view.fhit }</li>			
		</ul>
	</div>
<br />

<div  style="margin-left: auto; margin-right: auto; width: 60%;">
	<c:if test="${not empty fcontent_view.fileSrc }"><img style="width: 300px; height: 200px;" 
	src="../resources/upload/${fcontent_view.fileSrc }" alt="그림" /></c:if>
	<br />
	<p> ${fcontent_view.fcontent }</p>
</div>

<br />
<hr align="center" style="border: solid 1px black; width: 60%;" />

<table  style="margin-left: auto; margin-right: auto; width: 60%;">
	
	<tr>
		<td colspan="4">
			<input type="submit" value="수정" /> &nbsp;
			<a href="../free/fList">목록</a> &nbsp;
			<a href="fdelete?fno=${fcontent_view.fno }">삭제</a> &nbsp;
		<%-- 	<a href="freply_view?fno=${fcontent_view.fno }">답변</a>		 --%>
		</td>
	</tr>


</table>
<br /><br />
</form>
<!-- border: solid 2px gray;	border-radius: 1em; -->
<div style="margin-left: auto; margin-right: auto; width: 60%;">
	<br />			
	<c:forEach items="${frcontent_view }" var="frcontent_view">
	<hr align="center" style="border: solid 1px gray; width: 100%;" />				
	<p style="text-align: left;">작성자 : ${frcontent_view.frwriter } &nbsp;&nbsp; 작성시간 : ${frcontent_view.frdate }</p>
	<p style="text-align: left;">내용 : ${frcontent_view.frcontent }</p>
	
	
	</c:forEach>
</div>
<hr align="center" style="border: solid 1px black; width: 60%;" />

<div style="margin-left: auto; margin-right: auto; width: 60%;" >
			
	<form action="freply?fno=${fcontent_view.fno }" method="post">
		
		작성자 : <input type="text" name="frwriter" /> <br />
		내용 <br /> <textarea name="frcontent" id="" cols="50" rows="3"></textarea> <br />
		<input type="submit" value="등록" />
	</form>				
</div>

<div>
	<hr />
</div>

</body>
</html>