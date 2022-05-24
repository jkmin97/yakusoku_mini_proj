<%@page import="org.yakusoku.model.BoardDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>


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
#modify {
   background-color: rgba(156, 126, 174, 1);
   border-color: rgba(156, 126, 174, 1);
   color: white;
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
<%@ include file="/inc/navbar.jsp" %>
<%BoardDto detail = (BoardDto)request.getAttribute("detail"); %>

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
<%UserDto dto = (UserDto)session.getAttribute("member"); %>
<div class="container" id="detailpanel">
<div class="row" style="height: 8em;">
</div>
<div class="row">
<h1 class="col-sm-10 h1" style="font-family: 'zz';">작성글</h1></div>
<div class="clearfix">
<%String id=dto.getId();
String author = detail.getAuthor();%>
<%if(id.equals(author) || id.equals("admin")) {%>
<button type="button" class="btn btn-danger float-right" data-toggle="modal" data-target="#exampleModal">
  삭제
</button>

<!-- Modal -->

<input type=hidden name="no" value="${detail.getNo() }">
<input type=hidden name="password" value="${detail.getPassword() }">
<input type=hidden name="title" value="${detail.getTitle() }">
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Gowun Dodum', sans-serif;" >"${detail.title }" 글을 삭제합니다</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-family: 'Gowun Dodum', sans-serif;">
        정말 글을 삭제하시겠어요?😥<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
       <a href="delete.yaku?no=${detail.getNo() }"> <button type="submit" class="btn btn-danger">확인</button> </a>
      </div>
    </div>
  </div>
</div>

<button type="button" id="modify" class="btn float-right mr-3" data-toggle="modal" data-target="#exampleModal1">
  수정
</button>

<!-- Modal -->


<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Gowun Dodum', sans-serif;">"${detail.title }" 글을 수정합니다</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-family: 'Gowun Dodum', sans-serif;">
        글을 수정하시겠어요?😊<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <a href="modify.yaku?no=${detail.getNo() }"><button type="button" class="btn btn-danger">확인</button></a>
      </div>
   
 
     <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
<%} %>
<button type="button" class="btn btn-dark float-right mr-3" data-toggle="modal"  onclick="location.href='list.yaku'">
  목록</button>
 <!-- 또다른 방법! <a href="list.saram"><input type="button" value = "목록" class="btn btn-secondary float-right mr-3" data-toggle="modal"></a> -->

</div>
<div class="container">
<br>
<table class="table table-striped " bgcolor="#FF3E37" >
   <tr align="center" class="detailfont">
      <td style="width: 10%"><Strong>번호</Strong><br>${detail.getNo() }</td>
      <td style="width: 60%" align="left"><Strong>제목</Strong><br>${detail.getTitle() }</td>
      <td style="width: 20%"><Strong>작성자</Strong><br>${detail.getAuthor() }</td>
      <td style="width: 10%"><Strong>조회수</Strong><br>${detail.getReadcnt() }</td>
   </tr>
</table>

<div data-spy="scroll" class="ml-5 mr-5 detailfont">

<p>${detail.getContent() }</p>
</div>

<div class="float-right detailfont">
<h6>Write day</h6>
<p>${detail.getWriteday() }</p>
</div>
<br>
<br>
<hr/>
<table class="table table-success table-light detailfont">
   <tr>   
      <th style="width: 20%">ID</th>
      <th style="width: 80%">댓글</th>
   </tr>
<c:forEach var="list" items="${reply }">
   <tr>
      <td>${list.userid }</td>
      <td>${list.content }</td>
   </tr>
</c:forEach>
</table>
<form action="reply.saram" method="POST">
<table class= "table">
  
   <tr>
   <td><input type="text" class="form-control" name="content" placeholder="댓글을 입력하세요"/></td>
   <td><input type="submit" class="btn btn-secondary" value="댓글 입력"/>
   </tr>
   <tr>
   <td><input type="hidden" name="userid" value="${member.getId() }" /></td>
   <td><input type="hidden"  name="no" value="${detail.getNo() }" /></td>
   </tr>
   
   <%} %>
</table>
</form>
</div>
<%@ include file="/inc/bottom.jsp" %>
<br>
<br>
</div>
<script>
	$(function(){
		let mem = id;
		if(mem == null) {
			console.log("hi")
			$('body').html($("#detailpanel"));
		}
	})
</script>
</body>
</html>