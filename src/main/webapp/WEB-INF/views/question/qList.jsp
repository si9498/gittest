<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>Insert title here</title>
</head>
<body>
<br />
	<h2 style="text-align: center;">온라인 문의</h2>
	<h6 style="text-align: center;">온라인으로 접수된 문의는 <strong style="color: green;">24시간</strong> 이내에 답변을 드릴 수 있도록 노력하고 있습니다.</h4>
<br />
<form action="qList" id="form1" name="form1" method="post">

<input type="hidden" name="page" id="page" value="" />
<script type="text/javascript">
			function fnSubmitForm(page){ 
					document.form1.page.value=page;
					document.form1.submit();
					}
</script>

	<div class="container table-responsive w-75">
	<select name="qtype">
		<c:choose>
			<c:when test="${all }">
				<option  value="all" selected="selected" >전체</option>
			</c:when>
			<c:otherwise>
				<option  value="all" >전체</option>			
			</c:otherwise>
		</c:choose>	
		
		<c:choose>
			<c:when test="${modi }">
				<option  value="modi" selected="selected" >정보수정</option>
			</c:when>
			<c:otherwise>
				<option  value="modi" >정보수정</option>			
			</c:otherwise>
		</c:choose>	
		
		<c:choose>
			<c:when test="${service }">
				<option  value="service" selected="selected" >서비스이용</option>
			</c:when>
			<c:otherwise>
				<option  value="service" >서비스이용</option>			
			</c:otherwise>
		</c:choose>	
		
		<c:choose>
			<c:when test="${insert }">
				<option  value="insert" selected="selected" >구인공고등록</option>
			</c:when>
			<c:otherwise>
				<option  value="insert" >구인공고등록</option>			
			</c:otherwise>
		</c:choose>	
		
		<c:choose>
			<c:when test="${write }">
				<option  value="write" selected="selected" >이력서작성</option>
			</c:when>
			<c:otherwise>
				<option  value="write" >이력서작성</option>			
			</c:otherwise>
		</c:choose>	
	</select>
<input type="submit" value="정렬" />
<br /><br />

		<table class="table">
			<colgroup>
				<col width="15%" />
				<col width="40%" />
				<col width="15%" />
				<col width="30%" />
			</colgroup>
			
			<thead class="table-success">
				<tr>
					<th scope="col">조회수</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일자</th>
				</tr>
			</thead>
			<tbody>
				
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.qhit }</td>
						<td>
						<c:set value="${dto.qindent }" var="endIndent" />
						<c:forEach begin="1" end="${dto.qindent }" var="cnt">
							<c:if test="${cnt ne 1 }">
								&nbsp;
							</c:if>
							<c:if test="${cnt eq endIndent }">
							ㄴ[답변완료]
							</c:if>
						</c:forEach>
						<a href="qcontent_view?qno=${dto.qno }">${dto.qtitle }</a>
						</td>
						<td>${dto.qwriter }</td>
						<td>${dto.qdate }</td>
					</tr>
				</c:forEach>
				
					<tr>
						<td colspan="4"><a href="qwrite_view">문의</a></td>
					</tr>
			</tbody>
			
		</table>
	</div>
	<br /><br />
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
	
 
</form>

</body>
</html>