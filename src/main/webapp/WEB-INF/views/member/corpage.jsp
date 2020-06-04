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
   <script type="text/javascript">
   alert("로그인이 필요합니다");location.href="${HOME}/Project_UDB0526/login-view";
   </script>
   </c:if>
   <c:if test="${not empty memberID }">
      <div>
         <table class="container"
            style="border: 2px solid green; width: 1080px; height: 700px">
            <tr style="border: 2px solid green;" align="center">
               <td style="border: 2px solid green;" rowspan="3">
               <p>업체 이름</p>
               <img src="#" alt="사진" /><br />
                  <button>로고변경</button> <br />
                  <button>로고삭제</button></td>
               <td style="border: 2px solid green;"> <a href="#"><button>새 공고 작성</button></a></td>
               <td style="border: 2px solid green;">공고 공개 상태<br /> <a
                  href="#">공개/비공개</a></td>
               <td style="border: 2px solid green;">공고 등록 현황<br /> <a
                  href="#">#건</a></td>
            </tr>
            <tr style="border: 2px solid green;" align="center">
               <td style="border: 2px solid green;">공고 열람 회원<br /> <a
                  href="">#건</a></td>
               <td style="border: 2px solid green;">입사 지원자 <br /> <a href="#">#건</a></td>
               <td style="border: 2px solid green;">스크랩 인재정보<br /> <a
                  href="">${totalpick }건</a></td>
            </tr>
            <tr style="border: 2px solid green;" align="center">
               <td style="border: 2px solid green;" colspan="3">
                  <a href=changepass_view>비밀번호 변경</a> <br />
                  <a href=changetel_view>전화번호 변경</a> <br />
                  <a href=changeaddr_view>주소 변경</a> <br />
                  <a href=infmod>기업/담당자 정보 수정</a> <br />
                  <c:choose>
                  <c:when test="${msmaster == 'admin'}"> 
                  <a href=memberlist>(관리자)회원 정보</a> <br />
                  </c:when>
                  </c:choose>
               </td>

            </tr>
         </table>
      </div>
      <br />
      <div style="width: 1080px;">
      <div class="row">
         <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist" style="margin-right: -10px; margin-left: 10px;">
               <a
                  class="list-group-item list-group-item-action list-group-item-success active "
                  id="list-home-list" data-toggle="list" href="#list-home"
                  role="tab" aria-controls="home">공고 관리</a> <a
                  class="list-group-item list-group-item-action list-group-item-success "
                  id="list-profile-list" data-toggle="list" href="#list-profile"
                  role="tab" aria-controls="profile">지원자 관리</a> <a
                  class="list-group-item list-group-item-action list-group-item-success "
                  id="list-messages-list" data-toggle="list" href="#list-messages"
                  role="tab" aria-controls="messages">인재 관리</a> <a
                  class="list-group-item list-group-item-action list-group-item-success "
                  id="list-settings-list" data-toggle="list" href="#list-settings"
                  role="tab" aria-controls="settings">정보 관리</a>
            </div>
         </div>
         <div class="col-8" style="border: 2px solid green; width: 600px;">
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="list-home"
                  role="tabpanel" aria-labelledby="list-home-list">공고 관리 내용</div>
               <div class="tab-pane fade" id="list-profile" role="tabpanel"
                  aria-labelledby="list-profile-list">공고별 지원자/전체 지원자 관리</div>
               <div class="tab-pane fade" id="list-messages" role="tabpanel"
                  aria-labelledby="list-messages-list">열람한 인재/지원한 인재/스크랩 인재/맞춤 인재</div>
               <div class="tab-pane fade" id="list-settings" role="tabpanel"
                  aria-labelledby="list-settings-list">기업정보 수정/담당자 정보 수정/비번변경 및 탈퇴</div>
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