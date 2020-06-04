<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>changepass</title>
<script type="text/javascript"
   src="./../resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./../resources/js/gnb.js"></script>



</head>
<body>
   <div class="d-flex justify-content-center">
      <div style="padding-right: 200px;">
         <a href="/project_UDB"><img
            src="<%=application.getContextPath()%>/resources/img/logo.png"
            alt="로고" /></a>
      </div>

      <div>
         <br /> <br /> <a href="/project_UDB" class="text-success">HOME</a>
         | <a href="#" class="text-success">개인서비스</a> | <a href="logout"
            class="text-success">로그아웃</a>
      </div>
   </div>


   <hr />
   <div style="text-align: center;">
      <h2>회원 탈퇴</h2>
   </div>
   <br />
   <br />
   
   <div>
   <p style="text-align:center">
   <strong> 회원탈퇴를 위해 대충 인증이 필요하다는 내용 </strong>
   </p>
   </div>
   <br />
   
   
   <section id="tabs" class="project-tab">
   <div class="container" style="width: 700px;">
      <div class="row">
         <div class="col-md-12">
            <nav>
            <div class="nav nav-tabs nav-fill btn-group btn-group-toggle"
               id="nav-tab" role="tablist">
               <a class="nav-item nav-link btn btn-info" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">회원 탈퇴</a>
               
            </div>
            </nav>
            <div class="tab-content d-flex justify-content-center" id="nav-tabContent" style="border: 3px solid lightblue; padding: 50px;">

               <div class="tab-pane fade show active" id="nav-profile" role="tabpanel"
                  aria-labelledby="nav-profile-tab">
                  <br />
                  <div>
                     <input type="text" id="hID" name="hID" size="80%" placeholder="아이디를 입력해주세요" />
                  </div>
                  <br />
                  <div>
                     <input type="password" id="deletePW" placeholder="비밀번호를 입력해주세요" size="80%" />
                  </div>
                  <br />

                  <div>
                     <p>
                        <strong>회원 탈퇴 후 복구 불가 </strong>
                     </p>
                     <p class="text-success">대충 삭제한다는 내용</p>
                     대충 약관같은거
                  </div>
                  <br />

                  <th colspan="2">
                     <input type="hidden" id="dummy" name="dummy" value="${memberID }">
                     <input type="hidden" id="dummypw" name="dummypw" value="${memberPW }">
                  <button class="btn btn-info btn-lg btn-block" id="BdeleteID">탈퇴 완료</button>
                  </th>

               </div>

               
            </div>
         </div>
      </div>
   </div>
   </section>


   <hr />

   <div align="center">ⓒ uDongBa Corp. All rights reserved.</div>
   <script>
      $('#BdeleteID').on('click', function() {
    	  var getPWCheck = RegExp(/^[A-Za-z0-9_\.\-]{8,12}$/);
    	  var IDCheck = $('#dummy');
    	  var Did = $('#hID');
    	  
    	  if ($("#hID").val() != ($("#dummy").val())) {
			alert("아이디를 확인해주세요");
			$("#dummy").val("");
			$("#dummy").focus();
			return false;
			}
    	  else if ($("#deletePW").val() != ($("#dummypw").val())) {
  			alert("비밀번호를 확인해주세요");
  			$("#dummypw").val("");
  			$("#dummypw").focus();
  			return false;
  			}
    	  
    	  

         /*  if (!getPWCheck.test($("#deletePW").val())) {
             alert("비밀번호를 확인해주세요");
             $("#deletePW").val("");
             $("#deletePW").focus();
             return false;
          } */
          
          
         $.ajax({
            url : 'deleteID',
            type : 'post',
            data : {
               hID : $('#hID').val(),
               deletePW : $('#deletePW').val(),
            },
            success : function(t) {
               alert('탈퇴 완료.');
               location.href = "reLogin";
            },
            error : function() {
               alert('탈퇴 실패');
            }
         });
      });
   </script>
   </div>
   </section>
   </div>
</body>
</html>