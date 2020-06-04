<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../header.jsp"></jsp:include>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/notice.css" />
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
<title>회원 정보</title>
</head>



<body>
	<c:choose>
		<c:when test="${msmaster == 'admin'}">
			<h2>개인 회원 정보</h2>
			<div class="container table-responsive">
				<table class="table">
					<thead>
						<tr>
							<td style="width: 200px;">회원 정보 | 총 ${totalcnt }개</td>
						</tr>
						<tr>
							<td>개인 회원 조회<strong> 
							<a href="ordercheck?ot=1">∨</a> 
							<a href="ordercheck?ot=2">∧</a></td>
						</tr>
						

						<tr class="thead-dark">
							<th scope="col">회원번호</th>
							<th scope="col">아이디</th>
							<!-- <th scope="col">비밀번호</th> -->
							<th scope="col">이름</th>
							<th scope="col">이메일</th>
							<th scope="col">인증여부</th>
							<th scope="col">우편번호</th>
							<th scope="col">주소</th>
							<th scope="col">전화번호</th>
							<th scope="col">생일</th>
							<th scope="col">등급</th>
						</tr>

					</thead>
					<tbody>
						<c:forEach items="${list }" var="dto">
							<tr>
								<td>${dto.msno }</td>
								<td>${dto.msid }</td>
								<%-- <td>${dto.mspw }</td> --%>
								<td>${dto.msname }</td>
								<td>${dto.msemail }</td>
								<td>${dto.msemailchecked }</td>
								<td>${dto.mspostcode }</td>
								<td>${dto.msaddr }, ${dto.msdetailaddress } </td>
								<td>${dto.mstel }</td>
								<td>${dto.msbirth }</td>
								<td>${dto.msmaster }</td>
							</tr>
						</c:forEach>
						
					</tbody>
					</div>
				</table>
				<c:if test="${searchVo.totPage>1 }">
					<c:if test="${searchVo.page>1 }">
						<a href="memberlist?page=1">[처음]</a>
						<a href="memberlist?page=${searchVo.page-1 }">[이전]</a>
					</c:if>
					<c:forEach begin="${searchVo.pageStart }"
						end="${searchVo.pageEnd }" var="i">
						<c:choose>
							<c:when test="${i eq searchVo.page }">
								<strong style="color: red">${i } &nbsp;</strong>
							</c:when>
							<c:otherwise>
								<a href="memberlist?page=${i }">${i } &nbsp;</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${searchVo.totPage>searchVo.page }">
						<a href="memberlist?page=${searchVo.page+1 }">[다음]</a>
						<a href="memberlist?page=${searchVo.totPage }">[마지막]</a>
					</c:if>
				</c:if>
		</c:when>


		<c:when test="${msmaster == 'seeker'}">
			<h2>일반 회원은 사용 불가능한 페이지 입니다.</h2>
		</c:when>
		<c:when test="${msmaster == 'offer'}">
			<h2>기업 회원은 사용 불가능한 페이지 입니다.</h2>
		</c:when>

	</c:choose>

<div>
<hr />
</div>
</body>


</html>