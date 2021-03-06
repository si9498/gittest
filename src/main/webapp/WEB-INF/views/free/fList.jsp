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
<!-- <link rel="stylesheet" href="../css/table.css" /> -->
<title>게시판</title>
</head>
<body>
	<br />
	<!-- <div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="searchbar">
				<input class="search_input" type="text" name=""
					placeholder="Search..."> <a href="#" class="search_icon"><img
					src="../img/search-512.png" alt="검색" /><i class="fas fa-search"></i></a>
			</div>
		</div>
	</div> -->
	<h2 style="text-align: center;">알바후기</h2>
	total: ${total }
	<br /> 
	<div class="container table-responsive w-75">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<!-- <th scope="col">글번호</th> -->
					<th scope="col">조회수</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일자</th>
				</tr>
			</thead>
			<tbody>
			
						
				 <c:forEach items="${list }" var="dto">
					<tr>
						<td> ${dto.fhit }</td>
						<td><a href="fcontent_view?fno=${dto.fno }">${dto.ftitle }
						<c:if test="${dto.replyCount >0 }">
						(${dto.replyCount }) 
						</c:if>
						</a> </td>
						
						
						<td>${dto.fwriter }</td>
						<td>${dto.fdate }</td>
					</tr>
				</c:forEach> 
				
				<tr>
					<td colspan="5"><a href="fwrite_view">글작성</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	
<form action="fList" id="form1" 
name="form1" method="post">
<input type="hidden" name="page" id="page" value="" />

<script type="text/javascript">
						function fnSubmitForm(page){ 
							document.form1.page.value=page;
							document.form1.submit();
					}
</script>

<div class="d-flex justify-content-center">
	<c:if test="${searchVo.totPage>1 }">
		<c:if test="${searchVo.page>1 }">
			<a href="javascript:fnSubmitForm(${1 });">[처음]</a>
			<a href="javascript:fnSubmitForm(${searchVo.page-1 });">[이전]</a>
		</c:if>
			
		<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i">
			<c:choose>
				<c:when test="${i eq searchVo.page }">
					<strong style="color: black">${i } &nbsp;</strong>
				</c:when>
				<c:otherwise>
					<a href="javascript:fnSubmitForm(${i });">${i } &nbsp;</a>
				</c:otherwise>
			</c:choose> 
		</c:forEach>
		
		<c:if test="${searchVo.totPage>searchVo.page }">
			<a href="javascript:fnSubmitForm(${searchVo.page+1});">[다음]</a>
			<a href="javascript:fnSubmitForm(${searchVo.totPage});">[끝]</a>
		</c:if>
		
	</c:if>
</div>
<br />
<div class="d-flex justify-content-center">
	<c:choose>
		<c:when test="${ftitle }">
			<input type="checkbox" name="searchType" 
	value="ftitle" checked />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="ftitle" />
		</c:otherwise>
	</c:choose>
	
	<label>제목</label> &nbsp;&nbsp;
	
	<c:choose>
		<c:when test="${fcontent }">
			<input type="checkbox" name="searchType" 
	value="fcontent" checked="checked" />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="fcontent" />
		</c:otherwise>
	</c:choose>
	<label>내용</label> &nbsp;&nbsp;
	<input type="text" name="sk" style="width:200px;" 
	maxlength="50" value="${searchKeyword }" /> &nbsp;&nbsp;
	<input type="submit" name="btn_search" value="검색" />
</div>
</form>
</body>
</html>