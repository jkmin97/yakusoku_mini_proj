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
		<script>
			$(function(){
				$(".mapsrc").change(function() {
					var da = $("input[name='concept']:checked").val();
					document.getElementById("courseimage").src= da;
					$("#gogo").html($("#courseimage"));
				})
			})
		</script>
		<div class="row">
			
			<form>
				<label class="radio-inline"><input type="radio" class="mapsrc" name="concept" value="../img/dincho.png" style="margin-right: 5px" checked/>딩초 컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"><input type="radio" class="mapsrc" name="concept" value="../img/hangang.png" style="margin-right: 5px" />야외 컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"><input type="radio" class="mapsrc" name="concept" value="../img/luxury.png" style="margin-right:5px" />럭셔리 컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"><input type="radio" class="mapsrc" name="concept" value="../img/cheap.png" style="margin-right: 5px" />가성비 컨셉</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"><input type="radio" class="mapsrc" name="concept" value="../img/baek.png" style="margin-right: 5px" />백쿠 컨셉</label>
			</form>
		</div>
		<div id="gogo">
		<img id="courseimage" src="../img/dincho.png" style="width: 1000px; height: 500px" />
		</div>
	</div>

<%@include file="/inc/bottom.jsp"%>
</body>
</html>