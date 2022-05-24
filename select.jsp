<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/bootquery.jsp"%>
<style>
.nav-link {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}

.dropdown-item {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}

.top-buffer {
	margin-top: 20px;
}

body {
	background-color: rgba(241, 167, 120, 0.2);
	font-family: 'zz';
	text-shadow: 'black';
	color: 0.5px 0.5px rgb(147, 155, 165);
}

.joinfont {
	font-family: 'zz';
	text-shadow: 'black';
	color: 0.5px 0.5px rgb(147, 155, 165);
}

@font-face {
	src: url(../font/Pretendard-Light.ttf);
	font-family: 'zz';
}

.card {
border-radius: 50px / 20px;
}
</style>
<meta charset="UTF-8">
<title>패키지 - 야쿠소쿠(YAKUSOKU)</title>
</head>
<body>
	<%@ include file="/inc/navbar.jsp"%>
	<div class="container">
		<div class="row" style="height: 8em"></div>
		<div class="row">
			<div class="col-md-4">
				<h1 style="font-family: 'Raleway', sans-serif;">PACKAGE</h1>
			</div>

		</div>
		<hr />
		<div class="row">
			<p class="joinfont ml-3" style="color: rgb(147, 155, 165);">패키지를
				선택해주세요.</p>
		</div>
		<br />
		<div class="row" style="height: 4em"></div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="../img/umbrella4.png" height="250px"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title joinfont">우산 쓰는 사이</h5>
						<p class="card-text"><strong>₩150,000</strong> <br>
						나에게 봄비와 함께 찾아온 인연, 우리 함께 빗길 속을 걸어가볼까요?</p>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary float-right" data-toggle="modal"
							data-target="#umbrella">우산 쓰는 사이되기!</button>

						<!-- Modal -->
						<div class="modal fade" id="umbrella" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">우산 쓰는 사이는요...</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										어느 날 봄비와 함께 찾아온 인연. 나도 비 오는 날 손 잡고 나란히 걷고싶어. 콩닥콩닥거리는 마음을 안은 채
										나와 잘 맞는 짝꿍을 무제한 소개받을 수 있는 [우산 쓰는 사이] 패키지. 우리 함께 달달한 이야기를
										만들어볼까요?
										<hr />
										선물 ▶ 베라 파인트 1개 or 스벅 1만원권 1개 or 우산 1개
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">구독 안 할래요</button>
										<button type="button" class="btn btn-primary">빨리
											구독할래요!</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem">
					<img class="card-img-top" src="../img/hug3.png" height="250px"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">포옹 하는 사이</h5>
						<p class="card-text"><strong>₩220,000</strong> <br>
						나에게 따스한 햇살과 함께 찾아온 인연. 우리 함께 설레는 여행을
							떠나볼까요?</p>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary float-right" data-toggle="modal"
							data-target="#hug">포옹 하는 사이되기!</button>

						<!-- Modal -->
						<div class="modal fade" id="hug" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">포옹 하는 사이는요...</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										어느 날 따스한 햇살과 함께 찾아온 인연. 나도 한강에서 커플자전거 타고싶어. 두근두근한 마음을 안은 채 나와
										잘 맞는 짝꿍을 마음껏 소개받을 수 있는 "포옹하는 사이" 패키지. 우리 함께 설레는 여행을 떠나볼까요?
										<hr />
										선물 ▶ 공연 티켓 2장 & 영화 티켓 2장 or 치맥이나 치콜(BBQ) or 당일치기 여행권 1명 or
										아쿠아리움 입장권 2명
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">구독 안 할래요</button>
										<button type="button" class="btn btn-primary">빨리
											구독할래요!</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="../img/moon.png"
						height="250px" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">달빛 보는 사이</h5>
						<p class="card-text"><strong>₩370,000</strong> <br>
						어느 날 시원한 밤바람과 함께 찾아온 인연. 우리 함께 별 보러 가지
							않을래요?</p>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary float-right" data-toggle="modal"
							data-target="#moonlight">달빛 보는 사이되기!</button>

						<!-- Modal -->
						<div class="modal fade" id="moonlight" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">달빛 보는 사이는요...</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										시원한 밤바람과 함께 찾아온 인연. 이제 둘이어서 따뜻한 밤. 떨리는 마음을 안은 채 나와 잘 맞는 짝꿍을
										마음껏 소개받을 수 있는 "달빛 보는 사이" 패키지. 우리 함께 별 보러 가지 않을래요?
										<hr />
										선물 ▶ 놀이공원 자유이용권 2장 or 워터파크 or 스키장 티켓 2장 or 아웃백 7만원권
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">구독 안 할래요</button>
										<button type="button" class="btn btn-primary">빨리
											구독할래요!</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/inc/bottom.jsp" %>
</body>
</html>