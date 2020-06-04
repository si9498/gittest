<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Send Mail</title>

<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/gnb.js"></script>
</head>
<body>

	

	<section>
		
		<p>인증을 위한 메일이 전송되었으니 가입시 입력한 메일에서 인증 절차를 완료해주시기 바랍니다.<br>
		인증을 완료하셨다면 로그인화면으로 이동 후 진행가능니다.</p>
		<a href="login-view">로그인 화면으로 이동</a>
	</section>
    
    <footer id="footerArea">
       
    </footer>

</body>
</html>