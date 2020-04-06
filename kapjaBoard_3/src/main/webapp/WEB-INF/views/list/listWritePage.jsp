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
		<form action="listInsert">
		<table border="1">
			<h1>갑자게시판(작성페이지)</h1>
			<tr>
				<td>작성자</td><td><input type="text" name="bwriter"></td>
				<td>제목</td><td><input type="text" name="btitle" ></td>
			</tr>
			<tr>
				<td colspan="5"><textarea rows="10" cols="55" name="bcontent"></textarea> </td>
			</tr>
		</table>
		<table>
			<tr>
				<td><a href="listViewPage"><input type="button" value="목록"></a></td>
				<td><input type="submit" value="저장"></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>