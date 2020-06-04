<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <%@ include file="../header.jsp" %> --%>
<jsp:include page="../header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<title>공지사항</title>
</head>
<body>
<br />
	<h2 style="text-align: center;">공지사항</h2>
	<h6 style="text-align: center;"><strong style="color: green;">우동바</strong>의 서비스 신규, 업데이트 및 새로운 소식을 알려드립니다.</h4>
	<br /> 
	<div class="container table-responsive w-75">
		<table class="table">
			<colgroup>
				<col width="50%">
				<col width="25%">
				<col width="25%">
			</colgroup>
			<thead class="table-success">
				<tr>
					<!-- <th scope="col">글번호</th> -->
					<th scope="col">제목</th>
					<th scope="col">작성일자</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${list }" var="dto">
					<tr>
						<td><a href="icontent_view?ino=${dto.ino }">${dto.ititle }</a></td>
						<td>${dto.idate }</td>
						<td>${dto.ihit }</td>
						
					</tr>
				</c:forEach>
				<c:if test="${sessionScope.memberNickname eq 'yellow' }">
				<tr>
					<td colspan="5"><a href="iwrite_view">등록</a></td>
				</tr>
				</c:if>
			</tbody>
		</table>
	</div>
<br />
<!--페이징 -->
<div style="text-align: center;">
	<c:if test="${searchVo.totPage>1 }">
	<c:if test="${searchVo.page>1 }">
		<a href="../inform/iList?page=1">[처음]</a>
		<a href="../inform/iList?page=${searchVo.page-1 }">[이전]</a>
	</c:if>
	
	<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i" >
		<c:choose>
			<c:when test="${i eq searchVo.page }">
				<strong style="color: black">${i } &nbsp;</strong>
			</c:when>
			<c:otherwise>
				<a href="../inform/iList?page=${i }">${i } &nbsp;</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<c:if test="${searchVo.totPage>searchVo.page }">
		<a href="../inform/iList?page=${searchVo.page+1 }">[다음]</a>
		<a href="../inform/iList?page=${searchVo.totPage }">[끝]</a>
	</c:if>
</c:if>
</div>
	
</body>
</html>