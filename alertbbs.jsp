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
				<h1 style="font-family: 'Raleway', sans-serif;">ANNOUNCEMENT</h1>
			</div>
		</div>
		<hr />
		<div class="row">
			<p class="joinfont ml-3" style="color: rgb(147, 155, 165);">공지사항입니다.</p>
		</div>
		<br />
		<div class="row" style="height: 4em"></div>
		<div class="container">
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>그냥 데이터를 넣었습니다.</td>
					<td>관리자</td>
					<td>2022-05-13</td>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>야쿠소쿠 만세</td>
					<td>관리자</td>
					<td>2022-05-13</td>
					<td>5</td>
				</tr>
				<tr>
					<td>3</td>
					<td>시경이형 노래 좋네</td>
					<td>관리자</td>
					<td>2022-05-13</td>
					<td>117</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr />
</div>
<div class="container">
	<div class="row">
		<div class="col-md-4 bg-primary"></div>
	</div>
</div>
	
<div class="container">
		<ul class="pager">
			<li class="previous disabled"><a href="#">←Previous</a></li>
			<li class="next disabled"><a href="#">Next→</a></li>
		</ul>
</div>
<%@include file="/inc/bottom.jsp"%>
</body>
</html>