<%@page import="org.yakusoku.model.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-gradation01 navbar-fixed-top" >
  <a class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp" style= "font-family: 'Comfortaa', cursive; font-size: 1.8em; color: white;">
  <img src="https://cdn.worldvectorlogo.com/logos/lorem-lorem-1.svg" width="50em">
  YAKUSOKU</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item mr-2">
        <a class="nav-link" href="<%=request.getContextPath()%>/alert/alertbbs.yaku">Notice<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="<%=request.getContextPath()%>/yakunsoku/list.yaku">Yaku&Soku</a>
      </li>
      <li class="nav-item mr-3">
        <a class="nav-link" href="<%=request.getContextPath()%>/dating/map.yaku">DatingCourse</a>
      </li>
      <li class="nav-item dropdown mr-3">
        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-expanded="false">
          Package
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="<%=request.getContextPath() %>/package/select.yaku">Package</a>
          <a class="dropdown-item" href="<%=request.getContextPath() %>/board/list.yaku">Review</a>
          <a class="dropdown-item" href="#">Event</a>
        </div>
      </li>
        <%if (session.getAttribute("member")==null) { %>
      <li class="nav-item mr-5">
  <a class="navbar-brand" href="<%=request.getContextPath()%>/user/login.yaku"><button class="btn btn-light" style= "font-family: 'Raleway', sans-serif; font-weight: bold;">Sign in</button></a>
  </li> <%} else { UserDto dto = (UserDto) session.getAttribute("member"); %> 
   <li class="nav-item dropdown mr-5">
   <a class="nav-link dropdown-toggle" href="#" id="myinfo" role="button" data-toggle="dropdown" aria-expanded="false">
          My info
        </a>
   <div class="dropdown-menu" aria-labelledby="myinfo">
          <a class="dropdown-item text-info" href="<%=request.getContextPath()%>/user/detail.yaku"><%=dto.getId() %></a>
          <a class="dropdown-item" href="#">My package</a>
          <a class="dropdown-item" style="color: red" href="<%=request.getContextPath()%>/user/logout.yaku">Sign out</a>
        </div><%} %>
      </li>
     
      
    </ul>
</div>
</nav>

