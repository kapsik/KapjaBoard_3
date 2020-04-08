<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check_onclick() {
		
		theForm = document.frm1;
		
		if(theForm.bwriter.value =="" || theForm.btitle.value =="" || theForm.bcontent.value ==""){
			if(theForm.bwriter.value ==""){
				alert("작성자를 입력하시오");
				return theForm.bwriter.focus();
			}else if(theForm.btitle.value ==""){
				alert("제목을 입력하시오");
				return theForm.btitle.focus();
			}else if(theForm.bcontent.value ==""){
				alert("내용을 입력하시오");
				return theForm.bcontent.focus();
			}
		}else {
			//alert("잘했어 치타");
			theForm.submit();
		}
	}
</script>
<body>
	<div align="center">
		<form action="listInsert" name="frm1">
		<table border="1">
			<h1>갑자게시판(작성페이지)</h1>
			<tr>
				<td>작성자</td><td><input hidden="hidden" /><input type="text" name="bwriter"></td>
				<td>제목</td><td><input hidden="hidden" /><input type="text" name="btitle" ></td>
			</tr>
			<tr>
				<td colspan="5"><textarea rows="10" cols="55" name="bcontent"></textarea> </td>
			</tr>
		</table>
		<table>
			<tr>
				<td><a href="listViewPage"><input type="button" value="목록"></a></td>
				<td><input type="button" value="저장" onclick="check_onclick()"></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>