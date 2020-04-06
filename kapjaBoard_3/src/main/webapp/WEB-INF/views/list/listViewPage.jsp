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
		<table border="1">
			<h1>갑자게시판(목록페이지)</h1>
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
				<td><a href="listViewDetailPage?bno=${l.bno }">${l.btitle }</a><span>[0]</span></td>
				<td><a href="listViewDetailPage?bno=${l.bno }">${l.bwriter }</a></td>
				<td>${l.bdate }</td>
				<td>${l.bhit }</td>
			</tr>
			</c:forEach>
		</table>
		<table>
			<tr>
				<td><a href="listViewPage"><input type="button" value="목록"></a></td>
				<td><a href="listWritePage"><input type="button" value="글쓰기"></a></td>
			</tr>
		</table>
	</div>
</body>
</html>