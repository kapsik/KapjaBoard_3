<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="listViewEditPage">
		<h1>갑자게시판(내용페이지)</h1>
		<table border="1">
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
				<td colspan="5">${l.bcontent }</td>
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
		<table>
		<c:forEach var="l" items="${list }">
			<tr>
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