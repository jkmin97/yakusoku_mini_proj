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
			<label><input id="dingcho" name="concept" type=radio value="퍼니랜드, VRIZ 홍대, 수노래연습장, 카페데코믹스, 혼가츠" onClick="check(this)" style="margin-right: 10px" />딩초 컨셉 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
			<label><input id="out" name="concept" type=radio value="outcourse" onClick="check(this)" style="margin-right: 10px" />야외 컨셉 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
			<label><input id="luxuries" name="concept" type=radio value="luxury" onClick="check(this)" style="margin-right: 10px" />럭셔리 컨셉 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
			<label><input id="gaseongbi" name="concept" type=radio value="cheap" onClick="check(this)" style="margin-right: 10px" />가성비 컨셉 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
			<label><input id="iriywabayu" name="concept" type=radio value="baek" onClick="check(this)" style="margin-right: 10px" />백쿠 컨셉 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
		</form>
	</div>
	<script>
		$(document).ready(function() {
			$('button').click(function() {
				$('#output').text('');
			});
		
	
			$('input[name="concept"]').change(function() {
				$('input[name="concept"]').each(function() {
					var value = $(this).val();
					var checked = $(this).prop('checked');
					var $label = $(this).next();
				
					if(checked) {
						$label.css('background', white);
					}
				});
			});
			
			$('#btnGetChecked').click(function() {
				var $radioChecked = $('input[name="concept"]:checked');
				var id = $radioChecked.attr('id');
				var value = $radioChecked.val();
				$('#output').text("데이트코스 : " + id + "/" + value);
			});
		});
	</script>

<%@include file="/inc/bottom.jsp"%>
</body>
</html>