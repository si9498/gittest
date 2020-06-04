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
<title>마이 페이지</title>
</head>
<body>
	<c:if test="${empty memberID }">
		<a href="./../login-view">로그인이 필요합니다</a>
	</c:if>
	<c:if test="${not empty memberID }">
		<div>
			<table class="container"
				style="border: 2px solid green; width: 1100px; height: 700px">
				<tr style="border: 2px solid green;" align="center">
					<td style="border: 2px solid green;" rowspan="3"><img src="#"
						alt="사진" /><br />
						<button>사진변경</button> <br />
						<button>사진삭제</button></td>
					<td style="border: 2px solid green;"><a href="resume_download">내 이력서</a> <br /> 
					 <a href="./../member/resume"><button>이력서 등록</button></a></td>
					<td style="border: 2px solid green;">이력서 상태<br />
						<c:if test="${not empty rcheck }">
						<c:if test="${open eq '1' }">공개(<a href="./../member/resumeoff">비공개로 전환</a>)</c:if>
						<c:if test="${open eq '0' }">비공개(<a href="./../member/resumeon">공개로 전환</a>)</c:if>
						</c:if>
						<c:if test="${empty rcheck }">이력서를 등록해 주세요</c:if>
						</td>
					<td style="border: 2px solid green;">입사지원 현황<br /> <a
						href="#">#건</a></td>
				</tr>
				<tr style="border: 2px solid green;" align="center">
					<td style="border: 2px solid green;">이력서 열람기업<br /> <a
						href="">#건</a></td>
					<td style="border: 2px solid green;">입사지원 요청<br /> <a href="">#건</a></td>
					<td style="border: 2px solid green;">스크랩 채용정보<br /> <a
						href="">${totalpick }건</a></td>
				</tr>
				<tr style="border: 2px solid green;" align="center">
					<td style="border: 2px solid green;" colspan="3">
						<a href=changepass_view>비밀번호 변경</a> <br />
						<a href=changetel_view>전화번호 변경</a> <br />
						<a href=changeaddr_view>주소 변경</a> <br />
						<a href="infmod">회원 정보 수정</a> <br />
						<a href=deleteid_view>회원 탈퇴</a> <br />
						<c:choose>
						<c:when test="${msmaster == 'admin'}"> 
						<a href=memberlist>(관리자)개인회원 정보</a> <br />
						<a href=offerlist>(관리자)법인회원 정보</a> <br />
						</c:when>
						</c:choose>
					</td>

				</tr>
			</table>
		</div>
		<br />

		<div class="row">
			<div class="col-4">
				<div class="list-group" id="list-tab" role="tablist">
					<a
						class="list-group-item list-group-item-action list-group-item-success active "
						id="list-home-list" data-toggle="list" href="#list-home"
						role="tab" aria-controls="home">이력서 관리</a> <a
						class="list-group-item list-group-item-action list-group-item-success "
						id="list-profile-list" data-toggle="list" href="#list-profile"
						role="tab" aria-controls="profile">지원 현황</a> <a
						class="list-group-item list-group-item-action list-group-item-success "
						id="list-messages-list" data-toggle="list" href="#list-messages"
						role="tab" aria-controls="messages">이력서 열람기업</a> <a
						class="list-group-item list-group-item-action list-group-item-success "
						id="list-settings-list" data-toggle="list" href="#list-settings"
						role="tab" aria-controls="settings">스크랩 채용정보</a>
				</div>
			</div>
			<div class="col-8" style="border: 2px solid green;">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-home"
						role="tabpanel" aria-labelledby="list-home-list">이력서 관리 내용</div>
					<div class="tab-pane fade" id="list-profile" role="tabpanel"
						aria-labelledby="list-profile-list">지원 현황 내용</div>
					<div class="tab-pane fade" id="list-messages" role="tabpanel"
						aria-labelledby="list-messages-list">이력서 열람기업 내용</div>
					<div class="tab-pane fade" id="list-settings" role="tabpanel"
						aria-labelledby="list-settings-list">
						<table>
							<tr>
								<td>지역</td>
								<td>기업명/모집제목</td>
								<td>시급</td>
								<td>근무시간</td>
								<td>등록일</td>
							</tr>
							<c:forEach items="${scrab }" var="scrab">
								<tr>
									<td>${scrab.nlocation }</td>
									<td><a
										href="./../notice/content_view?c=${scrab.nseq }&p=${memberID }">${scrab.ntitle }</a></td>
									<td>${scrab.npay }</td>
									<td>${scrab.ntime }</td>
									<td>${scrab.nregdate }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</c:if>


	<br />
	<hr />
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
			<br /> <br />
			<div align="center">
				서울특별시 강동구 천호대로 1095 현대코아 3층 ㈜ 우동바 대표 : 엄준식 | 고객센터 02-1234-5678 <br />
				팩스 : 02-1234-4321 | 통신판매업 신고번호 : 제 강동-3872호 | 사업자등록번호 : 120-85-40538
				<br /> 직업정보제공사업 신고번호 : 서울청 제2020-18호 | E-mail : help@udongba.com <br />
			</div>
			<br /> <br />
			<div align="center">ⓒ uDongBa Corp. All rights reserved.</div>
		</div>
	</div>
</body>
</html>