<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/homePage.css">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check_onclick(){
		var theForm = document.frm1;
		// alert(theForm.replyWriter.value+theForm.replyText.value);
		if(theForm.replyWriter.value =="" || theForm.replyText.value ==""){
			if(theForm.replyWriter.value ==""){
				alert("작성자를 입력하시오");
				return theForm.replyWriter.focus();
				
			}else if(theForm.replyText.value==""){
				alert("내용을 입력하시오");
				return theForm.replyText.focus();
				
			}
		}else if(theForm.replyWriter.value !="" && theForm.replyText.value !=""){
			console.log("잘했어 치타");
			theForm.submit();
		}
		
		
		
		
		
	}
</script>
<body>
	<div id="replyWrite" align="center">
		<h1>갑자게시판(내용페이지)</h1>
		<table id="listViewDetailUp" border="1">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="l" items="${list }">
			<tr>
				<td>${l.bno }</td>
				<td>${l.btitle }</td>
				<td>${l.bwriter }</td>
				<td>${l.bdate }</td>
				<td>${l.bhit }</td>
			</tr>
			<tr>
				<td id="lBcontent" colspan="5">${l.bcontent }</td>
				<td hidden="hidden">
					<input type="hidden" name="bno" value="${l.bno }">
					<input type="hidden" name="btitle" value="${l.btitle }">
					<input type="hidden" name="bcontent" value="${l.bcontent }">
					<input type="hidden" name="bwriter" value="${l.bwriter }">
					<input type="hidden" name="bdate" value="${l.bdate }">
					<input type="hidden" name="bhit" value="${l.bhit }">
				</td>
			</tr>
			</c:forEach>
		</table>
		<table id="listViewReply" border="1">
		<c:forEach var="r" items="${rList }">
			<tr>
				<%-- <td>${r.rno }</td> --%>
				<td>${r.writer }</td>
				<td>${r.regDate }</td>
			</tr>
			<tr>
				<td id="rContent" colspan="3">${r.content }</td>
			</tr>
			</c:forEach>
		</table>
	<form action="replyWrite" name="frm1">
	<c:forEach var="l" items="${list}">
		<table>
			<tr>
				<td colspan="2">
					<input type="text" id="replyWriter" name="writer" >
					<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
					<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
					<input type="text" id="replyDate" name="replyDate" value="${today }" readonly="readonly">
					<input type="text" name="bno" hidden="hidden" value="${l.bno }">
				</td>
			</tr>
			<tr>
				<td><textarea id="replyText" name="content" rows="" cols=""></textarea></td>
				<td><input id="replyUpdate" type="button" value="확인" onclick="check_onclick()"></td>
			</tr>
		</table>
	</c:forEach>
	</form>	
	<form action="listViewEditPage">
		<table>
		<c:forEach var="l" items="${list }">
			<tr>
				<td hidden="hidden">
				<input type="hidden" name="bno" value="${l.bno }">
				<input type="hidden" name="btitle" value="${l.btitle }">
				<input type="hidden" name="bcontent" value="${l.bcontent }">
				<input type="hidden" name="bwriter" value="${l.bwriter }">
				<input type="hidden" name="bdate" value="${l.bdate }">
				<input type="hidden" name="bhit" value="${l.bhit }">
				</td>
				<td><a href="listViewPage"><input type="button" value="목록"></a></td>
				<td><input type="submit" value="수정"></td>
				<td><a href="listDelete?bno=${l.bno }"><input type="button" value="삭제"></a></td>
			</tr>
		</c:forEach>
		</table>
	</form>
	</div>
</body>
</html>