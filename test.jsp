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
		<form class="checkbox">
			<label><input id="1" class="course" type=radio name="concept" value='퍼니랜드&emsp;&emsp; -> &emsp;&emsp;VRIZ 홍대&emsp;&emsp; -> &emsp;&emsp;수노래연습장&emsp;&emsp; -> &emsp;&emsp;카페데코믹스&emsp;&emsp; -> &emsp;&emsp;혼가츠' onClick='getCourse(event)' style="margin-right: 10px"/>딩초컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<label><input id="2" class="course" type=radio name="concept" value='여의도 한강공원&emsp;&emsp; -> &emsp;&emsp;한강애슐리&emsp;&emsp; -> &emsp;&emsp;63빌딩' onClick='getCourse(event)' style="margin-right: 10px"/>야외컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<label><input id="3" class="course" type=radio name="concept" value='칵테일바(대학로)&emsp;&emsp; -> &emsp;&emsp;대학로 뮤지컬센터&emsp;&emsp; -> &emsp;&emsp;아웃백스테이크하우스(신촌점)' onClick='getCourse(event)' style="margin-right: 10px"/>럭셔리컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<label><input id="4" class="course" type=radio name="concept" value='낙산공원&emsp;&emsp; -> &emsp;&emsp;CGV 대학로&emsp;&emsp; -> &emsp;&emsp;스타벅스 마로니에공원점&emsp;&emsp; -> &emsp;&emsp;피자헛 혜화점' onClick='getCourse(event)' style="margin-right: 10px"/>가성비컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<label><input id="5" class="course" type=radio name="concept" value='빽다방 신촌점&emsp;&emsp; -> &emsp;&emsp;롤링파스타 신촌점&emsp;&emsp; -> &emsp;&emsp;한신포차 신촌점' onClick='getCourse(event)' style="margin-right: 10px"/>백쿠컨셉</label>
		</form>
		<div id='result'></div>
	</div>
	<div class="container">
	<script>
		function drawImage() {
			var found = null;
			var sel = document.getElementByName("concept");
			var img = document.getElementById("courseimage");
			
			for(var i = 0; i<sel.length; i++) {
				if(sel[i].checked == true) {
					found = sel[i];
					break;
				}
			}
			img.src = found.value;
		}
	</script>
	<div onload="drawImage()">
	
	<!-- <div id="map" style="width:100%;height:550px;"></div>
	<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e74068590a0a6f32e69805463282769&libraries=services"></script>
	</div>
	<script>
		function getCourse(event) {
			document.getElementById('result').innerText = event.target.value;
		}
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.55738934502928, 126.93688724187213), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
	// 마커를 표시할 위치와 title 객체 배열입니다 
	var positions = [
	    {
	        title: '퍼니랜드', 
	        latlng: new kakao.maps.LatLng(37.55586679155659, 126.93713467936126)
	    },
	    {
	        title: 'VRIZ 홍대 2호점', 
	        latlng: new kakao.maps.LatLng(37.55742120951084, 126.93750685538478)
	    },
 	    {
	        title: '수노래연습장', 
	        latlng: new kakao.maps.LatLng(37.558294597787615, 126.93642244999991)
	    }
/* 	    {
	        title: '카페데코믹스',
	        latlng: new kakao.maps.LatLng(37.583517053907094, 126.99899237904029)
	    },
	    {
	    	title: '혼가츠',
	    	latlng: new kakao.maps.LatLng(37.552614196949115, 126.92203783069705)
	    } */
	];

	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new kakao.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });
	    
	    $("#1").click(function() {
	    	$("#")
	    })
	}
	</script> -->
	</div>

<%@include file="/inc/bottom.jsp"%>
</body>
</html>