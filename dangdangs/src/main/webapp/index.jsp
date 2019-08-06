<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인덱스</h2>
	<c:if test="${ not empty loginVO }">
		<h3>로그인된 아이디: ${ loginVO.mid }</h3>
	</c:if>
	<a href="${ pageContext.request.contextPath }/board">전체 글</a><br>
	<a href="${ pageContext.request.contextPath }/diag">우리 개 진단</a><br>
	<a href="${ pageContext.request.contextPath }/signup">회원가입</a><br>
	<c:if test="${ empty loginVO }">
	<a href="${ pageContext.request.contextPath }/login">로그인</a><br>
	</c:if>
	<c:if test="${ not empty loginVO }">
	<a href="${ pageContext.request.contextPath }/mypage">마이페이지</a><br>
	<a href="${ pageContext.request.contextPath }/logout">로그아웃</a><br>
	</c:if>
</body>
</html>