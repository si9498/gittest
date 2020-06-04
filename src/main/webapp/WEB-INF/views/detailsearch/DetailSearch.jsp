<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>    
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
<br />   
<h2 style="text-align: center">SearchResult</h2>
<hr align="center" style="border: solid 3px gray;" width="90%;" />
<input type="hidden" name="page" value="" />
<br />


<div class="container table-responsive w-75">
		<table class="table">
			<thead>
				<tr>
					<td>검색결과 | 총 ${total }개</td>
				</tr>
				<tr>
					<td>등록순<strong><a href="ordercheck?ot=1&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">∨</a><a
							href="ordercheck?ot=2&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">∧</a></td>
					<td></strong>시급순<strong><a href="ordercheck?ot=3&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">∨</a><a
							href="ordercheck?ot=4&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">∧</a></strong></td>
				</tr>
				<!-- <tr class="thead-dark"> -->
				<tr class="table-success">
					<th scope="col">지역</th>
					<th scope="col">기업명/모집제목</th>
					<th scope="col">시급</th>
					<th scope="col">근무시간</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${DetailSearchList }" var="dto">
					<tr>
						<td>${dto.nlocation }</td>
						<td><a href="../notice/content_view?c=${dto.nseq }&p=${memberID }" >${dto.ntitle }</a>
							<c:if test="${empty sessionScope.dspreview }"><a href="previewon?pn=${dto.nseq }&remainpage=${searchVo.page }&dday=${dto.ndeadline }&now=<%= sf.format(nowTime) %>&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}"><img src="../img/slidedown.png" /></a></c:if><c:if test="${not empty sessionScope.dspreview }"><c:if test="${dto.nseq eq sessionScope.dspreview }"><a href="previewoff?remainpage=${searchVo.page }&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}"><img src="./../resources/img/offpreview.png" /></a></c:if></c:if> 
						</td>
						<td>${dto.npay }</td>
						<td>${dto.ntime }</td>
						<td>${dto.nregdate }</td>
					</tr>
					<c:if test="${not empty sessionScope.dspreview }">
						<c:if test="${dto.nseq eq sessionScope.dspreview }">
							<tbody>
								<tr height="50px">
									<td colspan="5">
									<strong>업 직 종</strong>&nbsp;&nbsp;&nbsp; ${dto.ncategory } 
									<br /> <pre><strong>기간·요일</strong> ${dto.nperiod }|${dto.nday }         <strong>마 감 일</strong> <c:if test="${empty dto.ndeadline }">상시모집</c:if><c:if test="${not empty dto.ndeadline}">${dto.ndeadline } (${lefttime })</c:if></pre>
									</td>	
								</tr>
							</tbody>
						</c:if>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		
<!--페이징  -->

<c:if test="${searchVo.totPage>1 }">
			<c:if test="${searchVo.page>1 }">
				<a href="DetailSearch?page=1&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">[처음]</a>
				<a href="DetailSearch?page=${searchVo.page-1 }&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">[이전]</a>
			</c:if>
			<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }"
				var="i">
				<c:choose>
					<c:when test="${i eq searchVo.page }">
						<strong style="color: red">${i } &nbsp;</strong>
					</c:when>
					<c:otherwise>
						<a href="DetailSearch?page=${i }&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">${i } &nbsp;</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${searchVo.totPage>searchVo.page }">
				<a href="DetailSearch?page=${searchVo.page+1 }&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">[다음]</a>
				<a href="DetailSearch?page=${searchVo.totPage }&nlocation=${param.nlocation}&ncategory=${param.ncategory}&nperiod=${param.nperiod}
					&nday=${param.nday}&ntime=${param.ntime}&ntpay=${param.ntpay}&npay=${param.npay}&nwelfare=${param.nwelfare}
					&ngender=${param.ngender}&nage=${param.nage}&nag=${param.nag}">[마지막]</a>
			</c:if>
		</c:if>

<div>
	<hr />
</div>
<%--  <form action="DetailSearch?nlocation=${DetailSearchList.nlocation }" id="form1" name="form1" method="post">
<input type="hidden" name="page" id="page" value="" />
<input type="hidden" name="nlocation" value="${DetailSearchList.nlocation }" />
<input type="hidden" name="ncategory" value="${DetailSearchList.ncategory }" />
<input type="hidden" name="nperiod" value="${DetailSearchList.nperiod }" />
<input type="hidden" name="nday" value="${DetailSearchList.nday }" />
<input type="hidden" name="ntime" value="${DetailSearchList.ntime }" />
<input type="hidden" name="ntpay" value="${DetailSearchList.ntpay }" />
<input type="hidden" name="npay" value="${DetailSearchList.npay }" />
<input type="hidden" name="nwelfare" value="${DetailSearchList.nwelfare }" />
<input type="hidden" name="ngender" value="${DetailSearchList.ngender }" />
<input type="hidden" name="nage" value="${DetailSearchList.nage }" />
<script type="text/javascript">
	function fnSubmitForm(page){
		document.form1.page.value=page;
		document.form1.submit();
	}
</script>
<div class="d-flex justify-content-center">
	<c:if test="${searchVo.totPage>1 }">
		<c:if test="${searchVo.page>1 }">
			<a href="javascript:fnSubmitForm(${1 });">[처음]</a>
			<a href="javascript:fnSubmitForm(${searchVo.page-1 });">[이전]</a>
		</c:if>
			
		<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i">
			<c:choose>
				<c:when test="${i eq searchVo.page }">
					<strong style="color: black">${i } &nbsp;</strong>
				</c:when>
				<c:otherwise>
					<a href="javascript:fnSubmitForm(${i });">${i } &nbsp;</a>
				</c:otherwise>
			</c:choose> 
		</c:forEach>
		
		<c:if test="${searchVo.totPage>searchVo.page }">
			<a href="javascript:fnSubmitForm(${searchVo.page+1});">[다음]</a>
			<a href="javascript:fnSubmitForm(${searchVo.totPage});">[끝]</a>
		</c:if>
		
	</c:if>
</div> 

</form>		 --%>
	 
</body>
</html>