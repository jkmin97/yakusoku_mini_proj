<%@page import="org.yakusoku.model.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/inc/bootquery.jsp" %>
<style>
.nav-link {
   font-family: 'Raleway', sans-serif;
   font-size: 1.3em;
}
.dropdown-item {
   font-family: 'Raleway', sans-serif;
   font-size: 1.3em;
}
/* .table {
   border-radius: 10px;
   border-collapse: collapse;
   border-style: hidden;
   box-shadow: 0 0 0 1px #000;
}
 */
   body {
      background-color: rgba(241, 167, 120, 0.2);
      font-family: 'zz';
   }
   @font-face {
	src: url(../font/Pretendard-Light.ttf);
	font-family: 'zz';
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/inc/navbar.jsp" %>
<div class="container">
   <div class="row" style="height: 8em"></div>
   <div class="row">
      <div class="col-md-4">
         <h1 >후기 게시판</h1>
      </div>
   </div>
   
   <hr />
   <div class="row">
      <p class="joinfont ml-3" style="color: rgb(147, 155, 165);">후기를 작성할 수 있는 후기 게시판입니다 :)</p>
   </div>
   <br />
   <div class="row" style="height: 4em"></div>
      <div class="container"> 
      <table class="table table-hover">
      <thead bgcolor="#FF3E37">
   <tr align="center">
      
      <th style="width:	10% ">번호</th>
      <th style="width: 45%">제목</th>
      <th style="width: 15%">작성자</th>
      <th style="width: 19%">날짜</th>
      <th style="width: 11%">조회수</th>
   </tr>
   
   <tbody>
   <% 
ArrayList<BoardDto> list = (ArrayList<BoardDto>)request.getAttribute("list");
for(int i=0; i<list.size(); i++) { %>
   <tr align="center">
      <td><%=list.get(i).getNo() %></td>
      <td align="left"><a href = "detail.yaku?no=<%=list.get(i).getNo() %>"
      style="text-decoration-line: none; color: black;"><%=list.get(i).getTitle() %></a></td>
      <td><%=list.get(i).getAuthor() %></td>
      <td><%=list.get(i).getWriteday() %></td>
      <td><%=list.get(i).getReadcnt() %></td>
   </tr>
<% } %>
   </tbody>
      </table>
      <div class="row">
   <button type="button" class="btn text-light ml-4" style="background-color: #FF3E37;" onclick="location.href='input.yaku'">
  작성하기</button>
   <div class="col">
</div>
      </div>
</div>
</div>

</body>
<%@ include file="/inc/bottom.jsp" %>
</html>