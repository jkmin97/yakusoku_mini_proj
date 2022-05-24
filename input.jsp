<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<%@ include file="/inc/bootquery.jsp" %>
<style>
	body {
		background-color: rgba(241, 167, 120, 0.2);
	}
.nav-link {
   font-family: 'Raleway', sans-serif;
   font-size: 1.3em;
}
.dropdown-item {
   font-family: 'Raleway', sans-serif;
   font-size: 1.3em;
}
@font-face {
	src: url(../font/Pretendard-Light.ttf);
	font-family: 'zz';
}

.detailfont {
	font-family: 'zz';
	font-size: 14pt;
	text-shadow: black;
	color: 0.5px 0.5px rgb(147, 155, 165);
}

</style>

</head>
<body>
	<%@include file="/inc/navbar.jsp" %>
	<%if(session.getAttribute("member") == null) { %>
<div class="container" id="notlogin">
<div class="row" style="height: 8em;">
</div>
	<div class="row justify-content-center">
		<h2 class="detailfont">로그인이 필요한 서비스입니다.</h2><br/>
		</div>
		<div style="height: 5em;"></div>
	<div class="row justify-content-center">
		<button id="loginbtn" class="btn btn-danger" onClick="window.location.href='<%=request.getContextPath()%>/user/login.yaku'">로그인</button>
	</div>
</div>
<%} else { %>
<%UserDto dto = (UserDto) session.getAttribute("member"); %>
<div class="container">
<div class="row clearfix" style="height: 8em">
</div>
<div class="clearfix detailfont">
<h1>후기 게시판</h1>
</div>
<hr/>

<form action="input.yaku" method="post">
	<div class="row clearfix">
			<div class="col-md-4">
				<label for="title" class="joinfont ml-3">제목</label>
				<table class="table">
					<tr><td><input id="title" name="title" type="text" class="joinfont form-control" placeholder="제목을 입력해주세요"/></td></tr>
				</table>
			</div>
			<hr> 
	</div>


					<input id="author" name="author" type="hidden" value="<%= dto.getId()%>"/>

			
<div class="row clearfix">
			<div class="col-md-12">
				<label for="content" class="joinfont ml-3">글쓰기</label>
				<table class="table">
					<tr>
						<td><textarea id="content" name="content" placeholder="내용을 입력해주세요" class="form-control joinfont" rows="10" style="resize: none;"></textarea></td>
					</tr>
					<tr>
					
						<td><input type="submit" class="joinfont btn btn-danger float-right" value="작성하기"></td>
					</tr>
					</table>
					</div>

					</div>
					</form>
					</div>
					<%} %>
<%@ include file="/inc/bottom.jsp" %>
<br>
<br>
</body>

