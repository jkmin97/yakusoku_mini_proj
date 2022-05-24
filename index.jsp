<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>야쿠소쿠(YAKUSOKU) - 미루지 말고 잡아요, 그 약속</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed&family=Comfortaa:wght@700&family=Dongle:wght@300&family=Gowun+Batang&family=Gowun+Dodum&family=Gugi&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Noto+Sans+KR:wght@300&family=Raleway&display=swap" rel="stylesheet">
<style>
.nav-link {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}
.dropdown-item {
	font-family: 'Raleway', sans-serif;
	font-size: 1.3em;
}

.banneryaku {
	font-family: 'Comfortaa', cursive;
}

.ftt {
	font-family: 'Raleway', sans-serif;
}

.zz {
	font-family: 'zz';
}

.zx {
	font-family: 'zx';
}

.jua {
	font-family: 'Jua', sans-serif;
}

body {
	height: 100%;
	background-image: url("img/index.webp");
	background-repeat: no-repeat;
	 background-size : cover;
	
}

.imgg {
        height: auto;
        width: auto;
        object-fit: cover;
    }

#banner {

	height: 100%;
	background-image: url("img/index.webp");
	background-repeat: no-repeat;
	 background-size : cover;
}

@font-face {
	src: url(font/NanumMyeongjo-Bold.ttf);
	font-family: 'zz';
}

@font-face {
	src: url(font/Pretendard-ExtraLight.ttf);
	font-family: 'zx';
}

@font-face {
    font-family: 'q';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SpoqaHanSansNeo-Light.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>

</head>
<body>
<%@ include file="/inc/navbar.jsp" %>
  <!-- title -->

  <div class="container">
  	<div class="row" style="height: 10em;"></div>
  		<div class="row" align="center">
  			<div class="col"><p class="text-light banneryaku"style="font-size: 20pt; text-align: center; line-height: 0pt;">
				   <img src="https://cdn.worldvectorlogo.com/logos/lorem-lorem-1.svg" width="23em" alt="앵무띠">
				   YAKUSOKU</p></div>
  		</div>
  		
  		
  		<div class="row" align="center">
  			<div class="col zz" style="color: white; font-size: 3em;"><p>당신이 약속에 늦은 시간</p></div>
  		</div>
        <div class="row">
            <div class="col" align="center">
            <div class="zz" id="count"  style="color: white; font-size: 3em; "></div>
            </div>
        </div>
        
        <div class="row" align="center">
            <div class="col-lg mt-5">
            	<a href="<%=request.getContextPath()%>/user/join.yaku"><button type="button" class="btn btn-outline-danger btn-lg">가입하기</button></a>
            </div>
        </div>
  </div>
  
   



<script>
var dday = new Date("MAY 16, 2022, 2:34:00").getTime();

setInterval(function() {
  var today = new Date().getTime();
  var gap = today - dday;
  var day = Math.ceil(gap / (1000 * 60 * 60 * 24));
  var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
  var sec = Math.ceil((gap % (1000 * 60)) / 1000);

  document.getElementById("count").innerHTML = day + "일 " + hour + "시간 " + min + "분 " + sec + "초";
}, 1);


</script>
</body>
</html>	