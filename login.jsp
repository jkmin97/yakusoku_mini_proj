<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/bootquery.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.loginfont {
	font-family: 'Comfortaa', cursive;;
	font-size: 14pt;
	text-shadow: black;
	color: 0.5px 0.5px rgb(147, 155, 165);
}
html,body {
  height: 100%;
  width: 100%;
}

body {
		background: linear-gradient(
    215deg,
    rgba(172, 93, 245, 0.97) 6%,
    rgba(222, 73, 214, 1) 20%,
    rgba(252, 79, 73, 1) 48%
  );
  
}

input {
	font-family: 'zz';
	font-size: 14pt;
	text-shadow: black;
	color: 0.5px 0.5px rgb(147, 155, 165);
	margin-bottom: 1em;
}

label {
	
}

#sub {
	font-size: 12pt;
	background: rgba(172, 93, 245, 1);
	color: white;
	text-weight: bold;
}

#sub:hover {
	background: rgba(150, 73, 225, 1);
	
}
</style>
</head>
<body>
<div class="container loginfont" style="display: flex; justify-content: center;">
	<div class="row justify-content-center">
		
		<div class="col" style=" float: none; margin 0 auto">
			<div class="card" style="width: 20rem; height: 28em; margin-top: 10em; background: linear-gradient(
		    45deg,
		    rgba(196, 74, 240, 0.4) 4%,
		    rgba(161, 93, 245, 0.4) 19%,
		    rgba(73, 92, 222, 0.4) 48%
		  );
			 ">
				<div class="card-body">
				<p class="text-light"style="text-size: 30pt; text-align: center;">
				   <img src="https://cdn.worldvectorlogo.com/logos/lorem-lorem-1.svg" width="23em">
				   YAKUSOKU</p>
				   <h3 class="text-light" style="margin-bottom: 3em;">Sign in</h3>
				   
				
				   <label for="id" class="text-light">ID</label>
				   <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요" />
				   <label for="pw" class="text-light">Password</label>
				   <input type="password" class="form-control" name="pwinput" id="pwinput" placeholder="비밀번호를 입력하세요" />
				   <button id="sub" type="submit" class="btn loginfont"  value="Sign in">Sign in</button>
				   
					
				
				   <p class="text-warning" style="text-align: center; text-size: 4pt; margin-top: 2em;">
				   <a class="text-warning" href="<%= request.getContextPath() %>/user/join.yaku">Join</a>
				    / <a class="text-warning" href="">Find ID or Password</a></p>
				</div>
  			</div>
		</div>
		
	</div>
</div>

<script>
$(function(){
	$("#sub").click(function(){
		
		let id = $("#id").val();
		let pw = $("#pwinput").val();
		
		
		
		var url = "http://localhost:8888/yakusoku_proj/user/login.yaku";
		$.ajax({
			url: url,
			type: "post",
			data: "id=" + id + "&pwinput=" + pw, 
			dataType: "text",
			success: function(result) {
				if(result == 0) {
					window.location.href="<%=request.getContextPath()%>/index.jsp";
				} else if(result == 1) {
					alert("존재하지 않는 ID입니다.");
					return false;
				} else if(result == 2) {
					alert("비밀번호가 틀렸습니다.");
					return false;
				}
			},
			error: function() {
				alert("서버요청실패");
			}
			
		})
		
	})
})
</script>

</body>
</html>