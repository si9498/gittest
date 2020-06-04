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
<title>공고 관리</title>

</head>
<body>
   <c:if test="${empty memberID }">
      <script type="text/javascript">
         alert("로그인이 필요합니다");
         location.href = "${HOME}/Project_UDB/login-view";
      </script>
   </c:if>
   <c:if test="${not empty memberID }">
      <h3>공고 관리</h3>
      <div class="guideBox" style="border: 3px solid green;">
         <br />
         <ul>
            <li>작성하신 공고의 공개 여부 및 기간을 수정 하실 수 있습니다.</li>
            <li>자신의 공고를 필요에 따라 각각 작성/관리 하실 수있으며 <strong>최대 5개</strong>까지
               보유하실 수 있습니다.
            </li>            
            <li><strong>기본공고</strong>는 여러 공고를 작성하실 때 <strong>내용을
                  불러와 간편하게 작성</strong>할 수 있도록 지정하는 공고입니다.</li>
            <li>가장 최근에 업데이트 하신 공고를 기본공고로 지정하시면 최근 내용을 불러오실 수 있습니다.</li>
         </ul>
      </div>
      <br />
      <div>
         <table style="border: 3px solid lightgreen; height: 20px;">
            <tr>
               <td style="border: 3px solid lightgreen; width: 200px;"
                  align="center">공개중/비공개중</td>
               <td style="width: 1000px;" align="center">원하는 인재상에 맞게 공고를 새로
                  작성해보세요</td>
               <td><input type="button" value="새 공고 작성" onclick="location.href='write_view';" /></td>
            </tr>
         </table>
      </div>
      <br />
      <h5>나의 공고 : 총 #개</h5>
      <div>
         <table
            style="border: 3px solid green; width: 1110px; text-align: center;">
            <tr>
               <td style="border: 3px solid green;">공고 제목</td>
               <td style="border: 3px solid green;">최종 수정일</td>
               <td style="border: 3px solid green;">관리</td>
               <td style="border: 3px solid green;">공개 여부</td>
            </tr>
            <tr>
               <td style="border: 3px solid green;" align="left"><input
                  type="checkbox" />제목</td>
               <td style="border: 3px solid green;">수정일</td>
               <td style="border: 3px solid green;"><input type="button"
                  value="수정" /><br />
               <input type="button" value="삭제" /></td>
               <td style="border: 3px solid green;">공개 중/비공개 중</td>
            </tr>
         </table>
      </div>
   </c:if>
   &nbsp;
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