<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

@font-face {
	src: url(../font/Pretendard-Light.ttf);
	font-family: 'zz';
}

.joinfont {
	font-family: 'zz';
	font-size: 14pt;
	text-shadow: black;
	color: 0.5px 0.5px rgb(147, 155, 165);
}


</style>
<meta charset="UTF-8">
<title>회원가입 -야쿠소쿠(YAKUSOKU)</title>
</head>
<body>
<%@ include file="/inc/navbar.jsp" %>
<div class="container">
	<div class="row" style="height: 8em">
	</div>  
	<div class="row">
		<div class="col-md-4">
			<h1 style="font-family: 'Raleway', sans-serif;">JOIN</h1>
		</div>
	</div>
	<hr />
	<div class="row">
	<p class="joinfont ml-3"> 회원정보를 입력해주세요 </p>
	</div>
	<br />
	<div class="row" style="height: 4em">
	</div>
</div>
<div class="container">
	<form action="join.yaku" method="post">
		<div class="row">
			<div class="col-md-8">
				<label for="id" class="joinfont ml-3">ID</label>
				<table class="table">
					<tr>
						<td style="width: 48%"><input id="id" name="id" type="text" class="joinfont form-control" placeholder="ID를 입력해주세요" /></td>
						<td><font id="idcheck" size="2" class="joinfont"></font></td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4">
				<label for="pw" class="joinfont ml-3">비밀번호</label>
				<table class="table">
					<tr>
						<td><input id="pw" name="pw" type="password" class="joinfont form-control" placeholder="비밀번호를 입력해주세요"/></td>
					</tr>
				</table>
			</div>
			<div class="col-md-8">
				<label for="pwcheck" class="joinfont ml-3">비밀번호 확인</label>
				<table class="table">
					<tr>
						<td style="width: 33%"><input id="pwcheck" name="pwcheck" type="password" class="form-control joinfont" placeholder="비밀번호를 입력해주세요"/></td>
						<td style="width: 33%"><font id="pwcheckfont" size="2" class="joinfont"></font></td>
					</tr>
				</table>
				
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label for="phone" class="joinfont ml-3">Phone</label>
				<table class="table">
					<tr>
						<td><input id="phone" name="phone" type="text" class="joinfont form-control" placeholder="핸드폰 번호를 입력해주세요" /></td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="row" style="height: 8em">
		</div>
		<div class="row">
			<div class="col-md-4">
				<h1 style="font-family: 'Raleway', sans-serif;">MORE INFOMATION</h1>
			</div>
		</div>
		<hr/>
		<div class="row">
			<span class="joinfont ml-3"> 추가정보를 입력해주세요 </span>
		</div>
		<div class="row" style="height: 4em">
		</div>
		<div class="row" >
			<div class="col-md-4">
				<label for="nickname" class="joinfont ml-3">별명</label>
				<table class="table">
					<tr><td><input id="nickname" name="nickname" type="text" class="joinfont form-control" placeholder="별명을 입력해주세요"/></td></tr>
				</table>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<label for="gender" class="joinfont ml-3">성별</label><br>
				<table class="table">
					<tr>
						<td style="width: 50%">
							<input name="gender" id="gender1" type="radio" class="joinfont" value="남" /> <span class="joinfont">남자</span>
						</td>
						<td style="width: 50%">
							<input name="gender" id="gender2" type="radio" class="joinfont" value="여" /> <span class="joinfont">여자</span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row" >
			<div class="col-md-4">
				<label for="age" class="joinfont ml-3">나이</label>
				<table class="table">
					<tr><td><input id="age" name="age" type="text" class="joinfont form-control" placeholder="만 나이를 입력하세요"/></td></tr>
				</table>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<label for="job" class="joinfont ml-3">직업</label>
				<table class="table">
					<tr><td><select name="job" id="job" class="custom-select joinfont" style="width:160px">   
							     <option value="선택 안 함" selected>직업 선택</option>    
							     <option value="무직">무직</option>    
							     <option value="학생">학생</option>    
							     <option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
							     <option value="언론">언론</option>    
							     <option value="공무원">공무원</option>    
							     <option value="군인">군인</option>    
							     <option value="서비스업">서비스업</option>    
							     <option value="교육">교육</option>    
							     <option value="금융/증권/보험업">금융/증권/보험업</option>    
							     <option value="유통업">유통업</option>    
							     <option value="예술">예술</option>    
							     <option value="의료">의료</option>    
							     <option value="법률">법률</option>    
							     <option value="건설업">건설업</option>    
							     <option value="제조업">제조업</option>    
							     <option value="부동산업">부동산업</option>    
							     <option value="운송업">운송업</option>    
							     <option value="농/수/임/광산업">농/수/임/광산업</option>    
							     <option value="가사">가사</option>    
							     <option value="기타">기타</option>    
							</select>
					</td></tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label for="sido" class="joinfont ml-3">지역</label>
				<table class="table">
					<tr>
						<td><select class="custom-select joinfont" name="home1" id="sido" style="width:160px"></select></td>
						<td><select class="custom-select joinfont" name="home2" id="gugun" style="width:160px"></select></td>
					</tr>
				</table>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<label for="religion" class="joinfont ml-3">종교</label>
				<table class="table">
					<tr><td><input id="religion" name="religion" type="text" class="joinfont form-control" placeholder="종교를 입력하세요"/></td></tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label for="body" class="joinfont ml-3">체형</label>
				<table class="table">
					<tr>
						<td style="width: 25%">
							<input name="body" type="radio" class="joinfont" value="마름" /> <span class="joinfont">마름</span>
						</td>
						<td style="width: 25%">
							<input name="body" type="radio" class="joinfont" value="보통" /> <span class="joinfont">보통</span>
						</td>
						<td style="width: 25%">
							<input name="body" type="radio" class="joinfont" value="통통" /> <span class="joinfont">통통</span>
						</td>
						<td style="width: 25%">
							<input name="body" type="radio" class="joinfont" value="똥똥" /> <span class="joinfont">똥똥</span>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<label for="divorce" class="joinfont ml-3">이혼 여부</label>
				<table class="table">
					<tr>
						<td style="width: 50%"><input name="divorce" type="radio" class="joinfont" value="돌싱" /> <span class="joinfont">돌싱</span></td>
						<td style="width: 50%"><input name="divorce" type="radio" class="joinfont" value="결혼 경험 없음" /> <span class="joinfont">결혼 경험 없음</span></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12">
				<label for="other" class="joinfont ml-3">자기소개</label>
				<table class="table">
					<tr>
						<td><textarea placeholder="자기소개를 입력하세요" class="form-control joinfont" name="other" rows="10" style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td><input type="submit" class="joinfont btn btn-danger float-right" value="가입하기" onClick="alert('가입이 완료되었습니다.')"/></td>
					</tr>
				</table>
			</div>
		</div>
		
	</form>
</div>

<%@include file="/inc/bottom.jsp" %>
<script>
    $(function(){
		$("#id").focusout(function(){
			let userId = $("#id").val();
			var url = "http://localhost:8888/yakusoku_proj/user/check.yaku";
			$.ajax({
				url: url,
				type: "post",
				data: "userId=" + userId,
				dataType: "json",
				success: function(result) {
					if(result==0) {
						$("#idcheck").html("사용할 수 없는 아이디입니다.");
						$("#idcheck").attr("color", "red");
					} else {
						$("#idcheck").html("사용가능한 아이디입니다.");
						$("#idcheck").attr("color", "green");
					}
				},
				error: function() {
					alert("서버요청실패");
				}
			})
		})
		
		 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
		  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
		   var area3 = ["대덕구","동구","서구","유성구","중구"];
		   var area4 = ["광산구","남구","동구", "북구","서구"];
		   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
		   var area6 = ["남구","동구","북구","중구","울주군"];
		   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
		   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
		   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
		   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
		   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
		   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
		   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
		   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
		   var area16 = ["서귀포시","제주시","남제주군","북제주군"];

		 

		 // 시/도 선택 박스 초기화

		 $("#sido").each(function() {
		  $selsido = $(this);
		  $.each(eval(area0), function() {
		   $selsido.append("<option value='"+this+"'>"+this+"</option>");
		  });
		  $("#gugun").append("<option value=''>구/군 선택</option>");
		 });

		 

		 // 시/도 선택시 구/군 설정

		 $("#sido").change(function() {
		  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
		  var $gugun = $("#gugun"); // 선택영역 군구 객체
		  $("option",gugun).remove(); // 구군 초기화

		  if(area == "area0") {
		   	$gugun.append("<option value=''>구/군 선택</option>");
		  }
		  else {
		   $.each(eval(area), function() {
		    $gugun.append("<option value='"+this+"'>"+this+"</option>");
		   });
		  }
		 });
		 
		$("#pwcheck").focusout(function(){
			var pw = $("#pw").val();
			var pwcheck = $("#pwcheck").val();
			if(pw != "" || pwcheck != ""){
				if(pw==pwcheck) {
					$("#pwcheckfont").html("비밀번호가 일치합니다.");
					$("#pwcheckfont").attr("color", "green");
				} else if(pw!=pwcheck) {
					$("#pwcheckfont").html("비밀번호가 일치하지 않습니다.");
					$("#pwcheckfont").attr("color", "red");
					$("#pw").focus();
				} 	
			}
		})
    });
</script>

</body>
</html>