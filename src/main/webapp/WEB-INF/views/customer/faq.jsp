<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<jsp:include page="../header.jsp"></jsp:include>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="./../css/faq.css" />
</head>
<body>
	<section id="tabs" class="project-tab">
		<div class="container" style="width: 1100px;">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill btn-group btn-group-toggle" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active btn btn-info active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">개인 회원 FAQ</a>
							<a class="nav-item nav-link btn btn-info" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"	aria-controls="nav-profile" aria-selected="false">기업 회원 FAQ</a>
						</div>
					</nav>
					<div class="tab-content d-flex justify-content-center" id="nav-tabContent" style="border: 3px solid lightblue; padding: 50px;">
					
						<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
							<div class="wrapper" style="text-align: center;">
								<div class="accordion">
									<div class="panel">
										<p>안심번호로 SMS도 전송 되나요?</p>
									</div>
									<div class="panel-content">
										<p>
											휴대폰 연락처로 안심번호를 설정하셨다면, <br /> 전화와 동일하게 회원님의 휴대폰으로 SMS도 전송이
											가능합니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>안심번호 서비스는 무엇인가요?</p>
									</div>
									<div class="panel-content">
										<p>
											회원님의 개인정보보호를 위해 실제 연락처를 노출하지 않고도 통화가 가능하도록 휴대폰, <br /> 유선전화
											등의 연락처에 가상의 전화번호를 부여하는 서비스입니다. <br /> 안심번호를 이용하시면 이력서 공개기간동안
											개인에게 부여된 가상전화번호인 안심번호로 통화가 이루어지고, <br /> 이력서 비공개 시 자동 해지되어
											해당 번호로 통화가 되지 않습니다. <br />안심번호 서비스는 이력서 공개 시, <br /> 자동으로
											적용되어 공개된 이력서에는 안시번호만 노출 됩니다. <br /> 안심하고, 이력서 공개하세요~
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>이력서를 작성할 때 제가 가진 자격증이나 학교명 검색이 안되요.</p>
									</div>
									<div class="panel-content">
										<p>알바천국에서는 공인된 자격증/학교 정보만이 입력되어 있으며, 검색결과가 없을 때는 직접입력을 통해
											입력이 가능합니다.</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>이력서를 등록한지 오래되서 뒤로 밀렸는데 다시 앞으로 위치를 옮길 수 있나요?</p>
									</div>
									<div class="panel-content">
										<p>
											네, 이력서관리에서 이력서내용을 수정하시면 다시 인재정보 상단에 노출됩니다. <br /> Tip. 오래된
											이력서는 연락처/학력/경력 등은 최근정보인지 확인하신 후 수정하시기 바랍니다. <br /> 개인회원 로그인
											후 [개인서비스 > 이력서관리] 에서 수정하실수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서를 수정하고 싶어요.</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											개인회원으로 로그인 후 [개인서비스 > 이력서 관리]에서 수정이 가능합니다. <br /> 수정할 이력서의
											[이력서 수정]을클릭하시면 수정이 완료됩니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>휴대폰 인증마크는 어떻게 받을 수 있나요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											휴대폰 인증이란 연락처 오류로 인한 실수를 방지하기 위해 본인이 소지하고 있는 휴대폰이 맞는지를 확인하는
											서비스로, <br /> 휴대폰 인증을 받은 후 이력서를 작성, 공개 설정하시면 휴대폰 인증마크를
											부여해드립니다. <br /> * 휴대폰 인증 방법 <br /> 개인회원 가입시 또는 이력서 작성시 휴대폰
											번호를 입력하세요. <br /> 입력한 휴대폰 번호 옆 인증하기 버튼을 클릭하시면 인증번호가 휴대폰으로
											발송됩니다. <br /> 휴대폰으로 수신한 인증번호를 입력하시면 휴대폰 인증이 완료됩니다. <br />
											Tip. 알바생을 찾는 기업에서는 알바생 본인이 자신의 연락처가 정확함을 인증한 휴대폰 인증마크가 있는
											이력서를 선호하기 때문에 <br /> 휴대폰 인증을 하시는 것이 좋습니다. <br /> 개인회원 로그인 후
											[개인서비스 홈화면] 에서 수정하실수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서에 증명사진을 올리고 싶어요.</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											개인회원 로그인 후 개인서비스 홈의 사진등록 또는 이력서 작성의 사진등록을 이용하세요. <br /> 이력서용
											증명사진이 없다면 일반 사진을 등록하신 후 원하는 부분을 적당한 크기로 편집해서 올릴 수 있습니다. <br />
											사진은 6MB 이하의 JPG, GIF,PNG 파일만 등록 가능하니, <br /> 혹시 등록이 되지 않는다면
											파일 용량이나 파일 종류를 확인하세요. <br /> Tip. 단정한 옷차림의 상반신 사진이 적당하며, 웃는
											표정일수록 호감도가 높아집니다. <br /> 개인회원 로그인 후 [개인서비스 홈화면] 또는 [이력서관리]에서
											수정하실 수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서는 어떻게 작성하나요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											이력서 작성은 개인회원으로 가입하신 후 이용 가능합니다. <br /> 이미 가입이 되어있다면 로그인 후
											개인서비스 > 새 이력서 작성 메뉴에서 작성하세요. <br /> 이력서 제목, 학력, 경력 등 본인의 이력과
											자기소개서를 상세하게 작성하세요. <br /> 작성하는 시간이 길더라도 2분 단위로 자동 저장되기 때문에
											작성한 내용이 사라지는 일은 없으니 안심하고 이용하세요. <br /> 이력서 내용을 작성하신 후에는 연락처가
											정확한지 반드시 확인하시고 공개 여부를 선택하세요. <br /> 이력서를 공개 설정하시는 것이 빠른 구직에
											도움이 됩니다. <br /> Tip. 이력서 제목과 자기소개서는 본인의 특기나 장점을 돋보이게 작성할수록
											기업의 선호도가 높아집니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>알바ForU 서비스는 무엇인가요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											알바ForU 서비스는 구직자가 알바천국에서 구직활동하는 패턴을 분석하여 구직자에게 채용정보를 추천해주는
											서비스입니다. <br /> 채용정보조회, 스크랩, 입사지원 패턴을 분석하여 <br /> 이와 관련된
											추천공고를 보여줌으로서 구직 활동 시 유용하게 활용하실 수 있는 서비스입니다.
										</p>
									</div>
								</div>
							</div>

						</div>
<!-- 기업FAQ시작 -->
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<div class="wrapper" style="text-align: center;">
								<div class="accordion">
									<div class="panel">
										<p>기업기업</p>
									</div>
									<div class="panel-content">
										<p>
											휴대폰 연락처로 안심번호를 설정하셨다면, <br /> 전화와 동일하게 회원님의 휴대폰으로 SMS도 전송이
											가능합니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>안심번호 서비스는 무엇인가요?</p>
									</div>
									<div class="panel-content">
										<p>
											회원님의 개인정보보호를 위해 실제 연락처를 노출하지 않고도 통화가 가능하도록 휴대폰, <br /> 유선전화
											등의 연락처에 가상의 전화번호를 부여하는 서비스입니다. <br /> 안심번호를 이용하시면 이력서 공개기간동안
											개인에게 부여된 가상전화번호인 안심번호로 통화가 이루어지고, <br /> 이력서 비공개 시 자동 해지되어
											해당 번호로 통화가 되지 않습니다. <br />안심번호 서비스는 이력서 공개 시, <br /> 자동으로
											적용되어 공개된 이력서에는 안시번호만 노출 됩니다. <br /> 안심하고, 이력서 공개하세요~
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>이력서를 작성할 때 제가 가진 자격증이나 학교명 검색이 안되요.</p>
									</div>
									<div class="panel-content">
										<p>알바천국에서는 공인된 자격증/학교 정보만이 입력되어 있으며, 검색결과가 없을 때는 직접입력을 통해
											입력이 가능합니다.</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel">
										<p>이력서를 등록한지 오래되서 뒤로 밀렸는데 다시 앞으로 위치를 옮길 수 있나요?</p>
									</div>
									<div class="panel-content">
										<p>
											네, 이력서관리에서 이력서내용을 수정하시면 다시 인재정보 상단에 노출됩니다. <br /> Tip. 오래된
											이력서는 연락처/학력/경력 등은 최근정보인지 확인하신 후 수정하시기 바랍니다. <br /> 개인회원 로그인
											후 [개인서비스 > 이력서관리] 에서 수정하실수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서를 수정하고 싶어요.</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											개인회원으로 로그인 후 [개인서비스 > 이력서 관리]에서 수정이 가능합니다. <br /> 수정할 이력서의
											[이력서 수정]을클릭하시면 수정이 완료됩니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>휴대폰 인증마크는 어떻게 받을 수 있나요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											휴대폰 인증이란 연락처 오류로 인한 실수를 방지하기 위해 본인이 소지하고 있는 휴대폰이 맞는지를 확인하는
											서비스로, <br /> 휴대폰 인증을 받은 후 이력서를 작성, 공개 설정하시면 휴대폰 인증마크를
											부여해드립니다. <br /> * 휴대폰 인증 방법 <br /> 개인회원 가입시 또는 이력서 작성시 휴대폰
											번호를 입력하세요. <br /> 입력한 휴대폰 번호 옆 인증하기 버튼을 클릭하시면 인증번호가 휴대폰으로
											발송됩니다. <br /> 휴대폰으로 수신한 인증번호를 입력하시면 휴대폰 인증이 완료됩니다. <br />
											Tip. 알바생을 찾는 기업에서는 알바생 본인이 자신의 연락처가 정확함을 인증한 휴대폰 인증마크가 있는
											이력서를 선호하기 때문에 <br /> 휴대폰 인증을 하시는 것이 좋습니다. <br /> 개인회원 로그인 후
											[개인서비스 홈화면] 에서 수정하실수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서에 증명사진을 올리고 싶어요.</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											개인회원 로그인 후 개인서비스 홈의 사진등록 또는 이력서 작성의 사진등록을 이용하세요. <br /> 이력서용
											증명사진이 없다면 일반 사진을 등록하신 후 원하는 부분을 적당한 크기로 편집해서 올릴 수 있습니다. <br />
											사진은 6MB 이하의 JPG, GIF,PNG 파일만 등록 가능하니, <br /> 혹시 등록이 되지 않는다면
											파일 용량이나 파일 종류를 확인하세요. <br /> Tip. 단정한 옷차림의 상반신 사진이 적당하며, 웃는
											표정일수록 호감도가 높아집니다. <br /> 개인회원 로그인 후 [개인서비스 홈화면] 또는 [이력서관리]에서
											수정하실 수 있습니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>이력서는 어떻게 작성하나요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											이력서 작성은 개인회원으로 가입하신 후 이용 가능합니다. <br /> 이미 가입이 되어있다면 로그인 후
											개인서비스 > 새 이력서 작성 메뉴에서 작성하세요. <br /> 이력서 제목, 학력, 경력 등 본인의 이력과
											자기소개서를 상세하게 작성하세요. <br /> 작성하는 시간이 길더라도 2분 단위로 자동 저장되기 때문에
											작성한 내용이 사라지는 일은 없으니 안심하고 이용하세요. <br /> 이력서 내용을 작성하신 후에는 연락처가
											정확한지 반드시 확인하시고 공개 여부를 선택하세요. <br /> 이력서를 공개 설정하시는 것이 빠른 구직에
											도움이 됩니다. <br /> Tip. 이력서 제목과 자기소개서는 본인의 특기나 장점을 돋보이게 작성할수록
											기업의 선호도가 높아집니다.
										</p>
									</div>
								</div>
								<div class="accordion">
									<div class="panel panel2">
										<p>알바ForU 서비스는 무엇인가요?</p>
									</div>
									<div class="panel-content panel-content2 ">
										<p>
											알바ForU 서비스는 구직자가 알바천국에서 구직활동하는 패턴을 분석하여 구직자에게 채용정보를 추천해주는
											서비스입니다. <br /> 채용정보조회, 스크랩, 입사지원 패턴을 분석하여 <br /> 이와 관련된
											추천공고를 보여줌으로서 구직 활동 시 유용하게 활용하실 수 있는 서비스입니다.
										</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

</body>
<script type="text/javascript">
$(document).ready(function(){
    $(".panel").click(function(){
	$(this).next().slideToggle('slow');
	$(this).parent().siblings().find('.panel-content').slideUp();
	
    });
});
</script>
</html>