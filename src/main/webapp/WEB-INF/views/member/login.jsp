<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/login.css" />
<link href="<%=application.getContextPath()%>/resources/img/logo.png" rel="shortcut icon" type="image/x-icon">
<title>로그인</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/gnb.js"></script>
</head>
<body>

<!-- <div class="d-flex justify-content-around h-100">
   <a href="/Project_UDB"><img src="resources/img/logo.png" alt="로고" /></a>
        <div>
        </div>
        <div>
        <br /><br />
       <a href="login-view" class="text-success">로그인</a> |
      <a href="/Project_UDB" class="text-success">HOME</a> |
      <a href="#" class="text-success">채용정보</a> |
      <a href="#" class="text-success">인재정보</a> |
      <a href="#" class="text-success">고객지원</a> 
        </div>    
</div> -->


<hr />
<section class="login-block">
    <div class="container" style="border: 10px inset lightgreen;">
   <div class="d-flex justify-content-center">
      <div class="col-md-4 login-sec">
          <h2 class="text-center">로그인</h2>
          <form class="form-1" action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">아이디</label>
    <input type="text" name="login" class="form-control" placeholder="아이디">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">비밀번호</label>
    <input type="password" name="password" class="form-control" placeholder="비밀번호">
  </div>

  
    <div class="form-check">
    <label class="form-check-label">
      <input type="checkbox" class="form-check-input">
      <small>자동 로그인</small>
    </label>
    <button type="submit" class="btn btn-login float-right">로그인</button>
  </div>
  <br />
  <div class="form-group">
     <a href="lookupPW-view" class="text-success">아이디/비밀번호 찾기</a> |
     <a href="join-view" class="text-success">회원가입</a>
  </div>
  
  
</form>
      </div>
</div>
</div>
</section>
   <br /><br /><br /><hr />
<div>
   <div class="jumbotron" >
   <div align="center" >
      <a href="#" class="text-success">회사소개</a> |
      <a href="#" class="text-success">이용약관</a> |
      <a href="#" class="text-success">개인정보처리방침</a> |
      <a href="#" class="text-success">알바보호정책</a> |
      <a href="#" class="text-success">운영정책</a> |
      <a href="#" class="text-success">사이트맵</a> |
      <a href="#" class="text-success">제휴문의</a> 
   </div>
   <br />
       <div align="center">
   서울특별시 강동구 천호대로 1095 현대코아 3층  ㈜ 우동바 대표 : 엄준식 | 고객센터 02-1234-5678 <br />
   팩스 : 02-1234-4321 | 통신판매업 신고번호 : 제 강동-3872호  | 사업자등록번호 : 120-85-40538 <br />
   직업정보제공사업 신고번호 : 서울청 제2020-18호 | E-mail : help@udongba.com <br /> 
      </div>
      <br /><br />
      <div align="center">
   ⓒ uDongBa Corp. All rights reserved. 
      </div>
       </div>
</div>
</body>
</html>