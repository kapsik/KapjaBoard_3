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
	
	
