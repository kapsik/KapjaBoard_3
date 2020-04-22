<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/homePage.css">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">

	function check_onclick() {
		
		var theForm = document.frm1;
		
		if(theForm.homeId.value == "" || theForm.homePassword.value == ""){
			if(theForm.homeId.value == ""){
				alert("아이디를 입력하시오");
				return theForm.homeId.focus();
			}else if(theForm.homePassword.value == ""){
				alert("비밀번호를 입력하시오");
				return theForm.homePassword.focus();
			}
		}else if(theForm.homeId.value != "" && theForm.homePassword.value != ""){
			console.log("잘했어치타");
			theForm.submit();
		}
		
		
		
	}

</script>
<title>Insert title here</title>
</head>
<body>
	<div id="home_body">
		<h1>갑자의 홈풰이지</h1>
		<h2>어서오시게</h2>
		<form action="memberLogin" name="frm1" method="post" autocomplete="off">
			<div>
				<div>로그인</div>
				<div><input type="text" id="homeId" name="id" placeholder="아이디 입력"></div>
			</div>
			<div>
				<div>비밀번호</div>
				<div><input type="password" id="homePassword" name="password" placeholder="비밀번호 입력"></div>
			</div>
			<div>
				<input type="button" id="home_login" onclick="check_onclick()" value="확인">
			</div>
		</form>
			<div>
				<div><a href="kapjaJoinPage"><input type="button" value="가입하기"></a></div>
			</div>
	</div>
	
<script type="text/javascript">
$("#homePassword").keyup(function(){
	$(this).val($(this).val().toUpperCase());
});
</script>		
</body>
</html>