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
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>

<!-- 결제기능 -->
<!-- <script>
$(function(){
var IMP = window.IMP; // 생략가능
IMP.init('imp99236624'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	IMP.request_pay({
	    pg : 'kakao', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '프리미엄배너결제',
	    amount : 150000,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '애용',
	    buyer_tel : '010-0000-0000',
	    buyer_addr : '서울 강동구 어디쯤',
	    buyer_postcode : '123-456',
	    /* m_redirect_url : 'https://www.yourdomain.com/payments/complete' */
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';	
	        location.href="../"
	        
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
})
</script> -->
</head>
<body oncontextmenu="return false" ondragstart="return false"
	onselectstart="return false">
	<jsp:include page="../header.jsp"></jsp:include>
	<form action="modify_view?nseq=${content_view.nseq }" method="post">
		<input type="hidden" name="nseq" value="" />
		<div class="w-100 h-100 container">
			<div class="d-flex justify-content-between">
				<div style="padding: 15px;">
					<h1>${content_view.ntitle }</h1>
				</div>
				<div></div>
				<div style="border: 2px solid green;">
					<c:if test="${empty pickcheck }">
						<button type="button"
							onclick="location.href='pickitem?nseq=${content_view.nseq }&msid=${memberID }'">찜하기</button>
					</c:if>
					<c:if test="${not empty pickcheck }">
						<button type="button"
							onclick="location.href='deletepickitem?nseq=${content_view.nseq }'">찜해제</button>
					</c:if>
					<br />
					<h5>
						담당자 연락처 :
						<c:if test="${empty memberNickname }">
							<a href="./../login-view">로그인이 필요합니다</a>
						</c:if>
						<c:if test="${not empty memberNickname }">${content_view.nreception}</c:if>
					</h5>
					<br /> 구직이 아닌 광고 등의 목적으로 연락처를 이용 할 경우 <br /> 법적 처벌을 받을 수 있습니다
				</div>
			</div>
			<div style="padding: 15px;">${content_view.ncontent }</div>
			<div style="width: 1080px;">
				<div class="card-group">
					<div class="card" style="border: none;">
						<img id="imgpay" src="" class="card-img-top"
							style="width: 100px; margin-left: 85px;">
						<div class="card-body">
							<p class="card-text" style="text-align: center;">${content_view.npay }
								원</p>
						</div>
					</div>
					<div class="card" style="border: none;">
						<img id="imgper" src="" class="card-img-top"
							style="width: 100px; margin-left: 85px;">
						<div class="card-body">
							<p class="card-text" style="text-align: center;">${content_view.nperiod }</p>
						</div>
					</div>
					<div class="card" style="border: none;">
						<img id="imgday"
							src="<%=application.getContextPath()%>/resources/img/callendar.png"
							class="card-img-top" style="width: 100px; margin-left: 85px;">
						<div class="card-body">
							<p class="card-text" style="text-align: center;">${content_view.nday }</p>
						</div>
					</div>
					<div class="card" style="border: none;">
						<img id="imgtime"
							src="<%=application.getContextPath()%>/resources/img/clock.png"
							class="card-img-top" style="width: 100px; margin-left: 85px;">
						<div class="card-body">
							<p class="card-text"
								style="text-align: center; padding: 0 10px 0 0">${content_view.ntime }</p>
						</div>
					</div>
				</div>
			</div>
			<script>
				var ntpay = "${content_view.ntpay}";
				if (ntpay == "시급") {
					$('#imgpay').attr("src", "../resources/img/si.png");
				}
				if (ntpay == "일급") {
					$('#imgpay').attr("src", "../resources/img/il.png");
				}
				if (ntpay == "주급") {
					$('#imgpay').attr("src", "../resources/img/jo.png");
				}
				if (ntpay == "월급") {
					$('#imgpay').attr("src", "../resources/img/wal.png");
				}
				if (ntpay == "연봉") {
					$('#imgpay').attr("src", "../resources/img/yeon.png");
				}
			</script>
			<script>
				var nperiod = "${content_view.nperiod}";
				if (nperiod == "1주일 이하") {
					$('#imgper').attr("src", "../resources/img/dan.png");
				}
				if (nperiod == "1주일~1개월") {
					$('#imgper').attr("src", "../resources/img/dan.png");
				}
				if (nperiod == "1개월~3개월") {
					$('#imgper').attr("src", "../resources/img/dan.png");
				} else {
					$('#imgper').attr("src", "../resources/img/jang.png");
				}
			</script>
		</div>
		<div style="padding: 15px;">
			<h3>근무 지역</h3>
		</div>
		<hr />
		<div style="padding: 15px;">
			주소 : ${content_view.naddr } <br /> 지역 : ${content_view.nlocation } <br />
			인근지하철 : ${content_view.nnearsub }
		</div>
		<div id="map" style="width: 1000px; height: 400px;"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bbcd375776081f93a035d9a90c792297">
			function write_view() {
				location.href = "/write_view.jsp";
			}
		</script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng('${content_view.lat}',
						'${content_view.lng}'), // 지도의 중심좌표
				level : 4
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng('${content_view.lat}',
					'${content_view.lng}');

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);
		</script>
		<div style="padding: 15px;">
			<h3>상세 모집 요강</h3>
			<hr />
		</div>
		<div style="padding: 15px;">
			<img style="width: 500px; height: 300px;"
				src="<%=application.getContextPath() %>/resources/uploadimg/${content_view.nimg }"
				onerror="this.style.display='none'" />
		</div>
		<div style="padding: 15px;">
			<h3>모집 조건</h3>
		</div>
		<hr />
		<div style="padding: 15px;">
			마감일 : ${content_view.ndeadline } <br /> 모집인원 :
			${content_view.npersonnel }<br /> 업직종 : ${content_view.ncategory }<br />
			복리후생 : ${content_view.nwelfare } <br /> 성별 : ${content_view.ngender }
			<br /> 연령 : ${content_view.nage } ${content_view.nag } <br /> 우대 :
			${content_view.npt } <br />
		</div>
		<hr />
		<div style="padding: 15px;">
			<h3>근무 조건</h3>
		</div>
		<hr />
		<div style="padding: 15px;">
			급여 : ${content_view.npay }원 &nbsp; <br /> 근무기간 :
			${content_view.nperiod } <br /> 근무요일 : ${content_view.nday } <br />
			근무시간 : ${content_view.ntime }
		</div>
		<div style="padding: 15px;">
			<tr>
				<td colspan="4"><input type="submit" value="수정" /> &nbsp; <a
					href="../notice/notice">공고목록</a> &nbsp; <a
					href="delete?nseq=${content_view.nseq }">삭제</a></td>
			</tr>
		</div>
	</form>

</body>
</html>