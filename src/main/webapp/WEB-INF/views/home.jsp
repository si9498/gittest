<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
<script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/practice.css" />
<link href="<%=application.getContextPath() %>/resources/img/logo.png" rel="shortcut icon" type="image/x-icon">

<script>
history.replaceState({}, null, location.pathname);
function goTop(){
	$('html').scrollTop(0);
	// scrollTop 메서드에 0 을 넣어서 실행하면 끝 !!
	// 간혹 이 소스가 동작하지 않는다면
	// $('html, body') 로 해보세요~
}
</script>
</head>
<title>우 동 바</title>
<body>
	<div>
		<div class="d-flex justify-content-around h-100">
			<a href="<%=application.getContextPath() %>"><img class="img-fluid" src="./resources/img/logo.png" alt="로고" /></a>
			<div class="searchbar" style="border: 3px solid green;">
				<input class="search_input" type="text" name="" placeholder="검색"
					style=""> <a href="#" class="search_icon"><img
					src="./img/search.png" alt="검색" /><i class="fas fa-search"></i></a>
			</div>
			<div>
				<br />
				<hr />
				<c:if test="${empty memberNickname }">
					<a href="login-view" class="btn btn-outline-success">로그인</a>
					<a href="practice/contract" class="btn btn-outline-success">개인회원가입</a>
					<a href="practice/offercontract" class="btn btn-outline-success">법인회원가입</a>
					<a href="member/findpass_view" class="btn btn-outline-success">비밀번호 찾기</a>
				</c:if>
				<c:if test="${not empty memberNickname }">
   			<a href="#" class="btn btn-outline-success">${memberNickname } 접속중</a>
   			<a href="#" class="btn btn-outline-success">${memberPW } 비번확인용</a>
    		<a href="logout" class="btn btn-outline-success">[로그아웃]</a>
				</c:if>
				<a href="<%=application.getContextPath() %>/customer/faq" class="btn btn-outline-success">FAQ</a>
				<a href="<%=application.getContextPath() %>/customer/campaign"	class="btn btn-outline-success">캠페인</a>
				<hr />
			</div>
		</div>
		<hr />

	</div>
	<div class="fixed-bottom d-flex justify-content-end"  >
			<button type="button" onclick="goTop()">맨 위로 ↑</button>
		</div>
	<!-- <div style="float: right; border: 2px solid green; width: 380px;">
		<div>
			<form class="px-4 py-3">
				<div class="form-group">
					<label>아이디</label> <input type="text" class="form-control"
						placeholder="아이디">
				</div>
				<div class="form-group">
					<label>비밀번호</label> <input type="password" class="form-control"
						placeholder="비밀번호">
				</div>
				<div class="form-group">
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="dropdownCheck">
						<label class="form-check-label" for="dropdownCheck"> 자동
							로그인 </label>
					</div>
				</div>
				<button type="submit" class="btn btn-success"
					onclick="alert('로그인성공');">로그인</button>
			</form>
			<div class="dropdown-divider"></div>
			<a class="dropdown-item" href="practice/join">회원가입</a> <a
				class="dropdown-item" href="#">아이디/비밀번호 찾기</a>
		</div>
	</div> -->
	<div class="container w-100">
		<div class="w-auto p-3">
			<nav class="navbar navbar-expand-lg navbar-light container" style="background-color: #58cf91;">
				<a class="navbar-brand" href="/Project_UDB">우리 동네 알바</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 채용정보 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="notice/notice">전체알바정보</a> <a
									class="dropdown-item" href="detailsearch/DetailSearch_view">상세검색</a>
							</div></li>
							
							
							<c:if test="${msmaster == 'seeker' || msmaster == 'admin' }">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 개인서비스 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="member/mypage">마이페이지</a>  
								<a class="dropdown-item" href="#">지원현황</a>
							</div></li>
							</c:if>
							
							
							
							<c:if test="${msmaster == 'offer' || msmaster == 'admin' }">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 기업서비스 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="member/corpage">기업페이지</a>
								<a class="dropdown-item" href="notice/nmanage">공고관리</a>
								<a class="dropdown-item" href="member/appmanage">지원자 관리</a>
								<a class="dropdown-item" href="#">프리미엄 등록 서비스</a>
							</div></li>
							</c:if>
							
							<c:if test="${empty memberNickname }">
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 개인서비스 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="member/mypage">마이페이지</a>  
								<a class="dropdown-item" href="#">지원현황</a>
							</div></li>
							
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 기업서비스 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="member/corpage">기업페이지</a>
								<a class="dropdown-item" href="notice/nmanage">공고관리</a>
								<a class="dropdown-item" href="member/appmanage">지원자 관리</a>
								<a class="dropdown-item" href="#">프리미엄 등록 서비스</a>
							</div></li>
							</c:if>
						
							
							
							
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 커뮤니티 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								 <a	class="dropdown-item" href="free/fList">알바 후기</a>
							</div></li>
							
							
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 고객서비스 </a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="member/customer">고객센터</a>
								<a class="dropdown-item" href="inform/iList">공지사항</a> 
								<a class="dropdown-item" href="question/qList">1:1문의</a>
								<a class="dropdown-item" href="customer/policy">운영정책</a>
							</div></li>
					</ul>
				</div>
				<div>
					<a href="member/resume" class="text-white"><img src="./img/resume.png"
						alt="" />이력서 등록</a> <a href="notice/write_view" class="text-white"><img
						src="./img/notice.png" alt="" />공고 등록</a>
				</div>
			</nav>
		</div>
		<div id="banner" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#banner" data-slide-to="0"
					class="active bg-success"></li>
				<li data-target="#banner" data-slide-to="1"
					class="active bg-success"></li>
				<li data-target="#banner" data-slide-to="2"
					class="active bg-success"></li>
			</ol>
			<div class="container">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./img/main1.png" height="250" width="1200" alt="슬라이드1"
							class="img-fluid">
					</div>
					<div class="carousel-item">
						<img src="./img/main2.png" height="250" width="1200" alt="슬라이드2"
							class="img-fluid">
					</div>
					<div class="carousel-item">
						<img src="./img/main3.png" height="250" width="1200" alt="슬라이드3"
							class="img-fluid">
					</div>
				</div>
			</div>
		</div>
		<br />
<jsp:include page="banner.jsp"></jsp:include>

		<span style="text-align: center;"> </span> <br />
		<hr />
		<div class="w-auto container" style="border: 5px solid lightgreen;">
			<div class="row row-cols-3">
				<c:forEach items="${home }" var="dto">
					<div class='col w-auto'
						style="border: 2px solid green; padding: 15px;">
						<div class="col w-auto">
							<a href="notice/content_view?c=${dto.nseq }"
								class="goodsBox-info"> <span class='logo'> <img class="img-fluid" style="width:250px; height:100px;"
									src='<%=application.getContextPath() %>/resources/uploadimg/${dto.nimg }' onerror="this.src='<%=application.getContextPath() %>/resources/img/white.jpg'" alt='' /> </br>
							</span> <span class='company'>${dto.nwriter }</span> </br> <span
								class='title'> <span>${dto.ntitle } </span>
							</span> <span class='wrap'> <span class='time'>/
										${dto.ntime }</span>
							</span> <span class='wrap'> <span class='local'>/
										${dto.nlocation }</span> <span class='pay'> <span
										class='payIcon hour'>/ ${dto.ntpay }</span> <span class='number'>${dto.npay }</span>원
								</span>
							</span>
							</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		&nbsp; <br />
		<hr />
		<div align="center">
		<!-- 	<img style="WIDTH: 650px" onclick="window.open(this.src)" alt="클릭하시면 조금더 커집니다.." hspace="0" src="./img/price.png"> --> 
			<jsp:include page="price.jsp"></jsp:include>
		</div>
		</div>
		&nbsp; <br />
		<hr />
		<!-- <div class="fixed-bottom" > -->
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