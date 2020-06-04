<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../header.jsp"></jsp:include>
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
	<c:if test="${empty memberID }">
   <script type="text/javascript">
   alert("로그인이 필요합니다");location.href="${HOME}/Project_UDB0526/login-view";
   </script>
   </c:if>
	<c:if test="${not empty memberID }">
	<div class="container">
		<p>입사 지원 현황</p>
		<div style="border: 2px solid black;">
			*최근 3개월 이내의 온라인, 문자, 간편입사, 이메일, 홈페이지, 전화지원 방법으로 입사 지원한 내역을 확인하실 수 있습니다. <br />
			<br />
			*입사 지원 후 이력서를 수정할 경우 지원한 이력서의 내용도 수정되며, 삭제할 경우 지원한 회사에는 삭제된 이력서로 노출됩니다. <br />
			<br />
			*지원 취소한 경우 지원한 회사에는 지원 취소로 표시되며, 지원 취소 시점부터 이력서를 확인할 수 없습니다. <br />
			<br />
			*단, 이메일 지원 시 채용담당자 이메일로 발송된 이력서는 회수가 불가합니다. <br />
			<br />
			*취업활동에 대한 증명서는 [취업활동 증명서 발급]을 이용하세요. (온라인, 이메일, 문자 지원한 공고에 대해서만 가능) <br />
			<br />
			*구직과정 중 급여 지급, 출입증 발급 등을 이유로 통장 비밀번호를 알려 달라고 하거나, 체크카드를 제출하라고 하는 경우는 반드시 거절하시길 바랍니다. <br />
		</div>
	</div>
 <br />
	<table class="table w-75 container">
  <thead class="table-success">
    <tr>
      <th scope="col">글 번호</th>
      <th scope="col">제목</th>
      <th scope="col">날짜</th>
      <th scope="col">글쓴이</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><a href="#">공지1</a></td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td><a href="#">공지2</a></td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td><a href="#">공지3</a></td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</c:if>
	<br />
	<div>
			<div class="jumbotron">
				<div align="center">
					<a href="#" class="text-success">회사소개</a> | <a href="#"
						class="text-success">이용약관</a> | <a href="#" class="text-success">개인정보처리방침</a>
					| <a href="#" class="text-success">알바보호정책</a> | <a href="#"
						class="text-success">운영정책</a> | <a href="#" class="text-success">사이트맵</a>
					| <a href="#" class="text-success">제휴문의</a>
				</div>
				<hr />
				<br />
				<br />
				<div align="center">
					서울특별시 강동구 천호대로 1095 현대코아 3층 ㈜ 우동바 대표 : 엄준식 | 고객센터 02-1234-5678 <br />
					팩스 : 02-1234-4321 | 통신판매업 신고번호 : 제 강동-3872호 | 사업자등록번호 :
					120-85-40538 <br /> 직업정보제공사업 신고번호 : 서울청 제2020-18호 | E-mail :
					help@udongba.com <br />
				</div>
				<br />
				<br />
				<div align="center">ⓒ uDongBa Corp. All rights reserved.</div>
			</div>
		</div>
</body>
</html>