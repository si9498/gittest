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
<title>지원자 관리</title>
   <jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
   <c:if test="${empty memberID }">
      <script type="text/javascript">
         alert("로그인이 필요합니다");
         location.href = "${HOME}/Project_UDB0526/login-view";
      </script>
   </c:if>
   <c:if test="${not empty memberID }">
         <br />
      <h2>전체 지원자</h2>
      <br />
   
 <br />
   <table class="table container" style="width: 90%;">
  <thead class="table-success">
    <tr>
      <th scope="col">지원자</th>
      <th scope="col">경력</th>
      <th scope="col">지원일</th>
      <th scope="col">합격여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">곽두팔</th>
      <td><a href="#">몇개월</a></td>
      <td>지원일자1</td>
      <td><button type="button" class="btn btn-outline-info">합격</button>
      <button type="button" class="btn btn-outline-danger">불합격</button></td>
    </tr>
    <tr>
      <th scope="row">엄준식</th>
      <td><a href="#">몇개월</a></td>
      <td>지원일자2</td>
      <td><button type="button" class="btn btn-outline-info">합격</button>
      <button type="button" class="btn btn-outline-danger">불합격</button></td>
    </tr>
    <tr>
      <th scope="row">인...직</th>
      <td><a href="#">몇개월</a></td>
      <td>지원일자3</td>
      <td><button type="button" class="btn btn-outline-info">합격</button>
      <button type="button" class="btn btn-outline-danger">불합격</button></td>
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