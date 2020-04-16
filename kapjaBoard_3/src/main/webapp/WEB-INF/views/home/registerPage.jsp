<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/homePage.css">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<title>Insert title here</title>
</head>
<body>
	<div id="home_body">
		<h1>갑자의 홈풰이지</h1>
		<h2>회원가입</h2>
			<form action="kapjaJoin" method="post" autocomplete="off">
				<div>
					<div>아이디</div>
					<div>
						<p>
							<input type="text" id="userId" name="userId" placeholder="아이디 입력">
							<button type="button" class="idCheck">중복확인</button>
						</p>
						<p class="result">
							<span class="msg">아이디를 확인해주십시오</span>
						</p>
					</div>
				</div>
				<div>
					<label for="userPass">비밀번호</label>
					<p><input type="password" id="userPassword" name="userPassword" placeholder="비밀번호 입력"></p>
				</div>
				
			</form>
				<div>
					<div><input type="submit" id="submit" disabled="disabled" value="가입신청"></div>
				</div>
				<div>
					<a href="homePage">처음으로</a>
				</div>
			




	</div>
	
<script type="text/javascript">
	
$(".idCheck").click(function(){
	//alert("idCheck");
	 
	 var query = {userId : $("#userId").val()};
	 //alert(query);
	 
	 $.ajax({
	  url : "idCheck",
	  type : "post",
	  data : query,
	  success : function(data) {
	  
	   if(data == 1) {
		   alert("1");
	    $(".result .msg").text("사용 불가");
	    $(".result .msg").attr("style", "color:#f00"); 
	    
	    $("#submit").attr("disabled", "disabled");
	   } else {
		   alert("0");
	    $(".result .msg").text("사용 가능");
	    $(".result .msg").attr("style", "color:#00f");
	    
	    $("#submit").removeAttr("disabled");
	   }
	  }
	 });  // ajax 끝
	});
	
</script>		
</body>
</html>