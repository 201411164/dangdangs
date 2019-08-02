<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
</head>
<body>
	<h2>게시판</h2>
	<hr>
	<div align="center">
		<table style="border: 1px solid;">
			<tr>
				<th>글 번호</th>
				<th>글 제목</th>
			</tr>
			<c:forEach items="${ boardList }" var="board">
			<tr>
				<td><a href="board/${ bno }">${ board.bno }</a></td>
				<td><a href="board/${ bno }">${ board.dname }</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>