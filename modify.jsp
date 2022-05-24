<%@page import="org.yakusoku.model.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	BoardDto detail = (BoardDto)request.getAttribute("detail");
%>

<head>
<%@ include file="/inc/bootquery.jsp" %>
<style>
.nav-link {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}

.dropdown-item {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}

body {
	background-color: rgba(241, 167, 120, 0.2);
}

.ftt {
	font-family: 'Raleway', sans-serif;
}
</style>
</head>
<body>
	<%@include file="/inc/navbar.jsp"%>
	<div class="container">
		<div class="row" style="height: 8em;"></div>
			<div class="col-sm-10">
				<h1 class="h1 ftt">Revise</h1>
			</div>

			<form action="modify.yaku" method="post">
				<input type="hidden" name="no" value="${detail.getNo() }"> 
				<table class="table table-striped">
					<tr align="center">
						<td style="width: 10%"><Strong>NO</Strong><br>${detail.getNo() }</td>
						<td style="width: 60%" align="left"><Strong>TITLE</Strong><input type="text"
							name="title" class="form-control col-sm-4 ml-0" id="title"
							placeholder="글 제목을 입력하세요" value="${detail.getTitle() }" /></td>
						<td style="width: 20%"><Strong>AUTHOR</Strong><br>${detail.getAuthor() }</td>
					</tr>
				</table>

				<div data-spy="scroll" class="ml-5 mr-5">
					<textarea class="form-control" name="content" id="textbox" rows="8"
						style="resize: none">${detail.getContent() }</textarea>
				</div>
				<br>
				<div class="float-right">
					<input type="submit" class="btn btn-secondary" value="수정완료" />
				</div>
			</form>
		</div>
		
		<%@ include file="/inc/bottom.jsp"%>
		<br> <br>
</body>