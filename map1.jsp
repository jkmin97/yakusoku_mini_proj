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

.pager {
	list-style: none;
	padding-left: 0px;
}

.previous disabled {
	text-align: start;
}

.next disabled {
	text-align: end;
}

#searchBox {
	margin: 20px 0;
}

.listInner {
	background-color: rgba(195, 120, 170, 0.29);
	margin: 10px 45px;
	padding: 4px;
	width: 200px;
}

.concept {
	font-weight: bold;
}

.float-right {
	margin-top: 40px;
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
				<h1 style="font-family: 'Raleway', sans-serif;">DATINGCOURSE</h1>
			</div>
		</div>
		<hr />
		<div class="row">
			<p class="joinfont ml-3" style="color: rgb(147, 155, 165);">데이트
				장소를 추천해드립니다.</p>
		</div>
		<br />
		<div class="row" style="height: 4em"></div>
	</div>
	<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e74068590a0a6f32e69805463282769&libraries=services"></script>
		<p style="margin-top: -12px">
			
		<div id="map" style="width: 100%; height: 350px;"></div>
		</p>
		</div>
		<div class="col-lg-4">
		<form class="checkbox">
			<input name="concept" type = radio value="jammin" onClick="check(this)" style="margin-right: 5px" />딩초 컨셉<br>
			<input name="concept" type = radio value="outcourse" onClick="check(this)" style="margin-right: 5px" />야외 컨셉<br>
			<input name="concept" type = radio value="luxury" onClick="check(this)" style="margin-right: 5px" />럭셔리 컨셉<br>
			<input name="concept" type = radio value="cheap" onClick="check(this)" style="margin-right: 5px" />가성비 컨셉<br>
			<input name="concept" type = radio value="baek" onClick="check(this)" style="margin-right: 5px" />백쿠 컨셉<br>
		</form>

		</div>
		</div>
	</div>
	<div class="container" id="ex1">
		
		<script>
		$(document).ready(function() {
			$("#bt1").click(function() {
				$("ex1").hide(500);
			})
		
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.5666805, 126.9784147), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(
							'경기도 수원시 영통구 영통로 232',
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">야쿠소쿠</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});

			function check(box) {
				if(box.checked == true) {
					window.status = box.value + "선택했습니다."
				} else {
					window.status = box.value + "선택을 해제했습니다."
				}
			}
		})
		$(document).ready(function() {
			$('button').click(function() {
				$("#output").text('');
			});
			
			$('#btnGetChecked').click(function() {
				var $radioChecked = $('input[name="rdColors"]:checked');
				var id = $radioChecked.attr('id');
				var value = $radioChecked.val();
				$('#output').text("딩초 컨셉 : " + 놀이공원 + "/" + 분식집);
			});
		})
		</script>

	</div>
	<%@include file="/inc/bottom.jsp"%>
</body>
</html>