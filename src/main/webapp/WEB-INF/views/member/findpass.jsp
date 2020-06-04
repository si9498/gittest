<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findpass</title>

<h2>findpass</h2>


<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/gnb.js"></script>
   <script type="text/javascript">
    $(function(){
    	$("form").submit(function(){
    		var getIDCheck=RegExp(/^[A-Za-z0-9가-힣]{2,8}$/);
    	    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    	
    		//에러 초기화
    		$("p.error").remove();
    		$("dl dd").removeClass("error");
    		
    		//필수 항목 체크
    		$(":text,:password").filter(".validate").each(function(){
    			$(this).filter(".required").each(function(){
    				if($(this).val()==""){
    					$(this).parent().append("<p class='error'>필수항목입니다</p>");
    				}
    			});
    		});
    		
    		//에러일 경우 처리
    		if($("p.error").length > 0){
    				$('html,body').animate({ scrollTop: $("p.error:first").offset().top-40 }, 'slow');
    				$("p.error").parent().addClass("error");
    				return false;
    
				}

			if (!getIDCheck.test($("#id").val())) {
				alert("ID를 확인해주세요.");
				$("#id").val("");
				$("#id").focus();
				return false;
			}

			if (!getMail.test($("#email").val())) {
				alert("이메일 형식이 올바르지 않습니다.")
				$("#email").val("");
				$("#email").focus();
				return false;
			}
		});
	});
    $(function(){
    	$("#id").focus(function(){
    		$("#idEl").css("display","none");
    	});
    });
</script>
</head>
<body>
<div id="wrap">
   

    <section>
    	
		<div id="content">
			<h1>PW 찾기</h1>
			<form action="findpass" method="post">
				<dl>
					<dt>ID 입력<span> ※ </span></dt>
					<dd><input type="text" name="id" id="id" size="35" class="validate required" placeholder=" 아이디를 입력해주세요 " />
					<span id="idEl" style="font-style:italic; color:red;">&nbsp;&nbsp;${idNE }</span></dd>
				</dl>
				<dl>
					<dt>회원가입시 입력한 이메일<span> ※ </span></dt>
					<dd><input type="text" name="email" id="email" size="35" class="validate required" /></dd>
				</dl>
				<p style="text-align:center; margin-bottom:20px;"><input class="btn" type="submit" value="확인" />
				<input class="btn" type="button" value="취소" onclick="location.href='/hhh/'"/></p>
			</form>
		</div>
		
	</section>
    
    
</div>
</body>
</html>