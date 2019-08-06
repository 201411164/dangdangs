<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<style>
	.error {
		color: red;
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<section>
	<div align="center">
		<br>
		<hr>
		<h2>게시판 등록폼</h2>
		<hr>
		<br>
		
		<form:form method="post" commandName="boardVO">
			<table>
				<tr>
					<th width="23%">제목</th>
					<td>
						<form:input path="title"/> 
						<form:errors path="title" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="23%">글쓴이</th>
					<td>
						<form:input path="writer"/> 
						<form:errors path="writer" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="23%">내용</th>
					<td>
						<form:textarea path="content" rows="5" cols="80"/>
						 <form:errors path="content" class="error"/>
					</td>
				</tr>
			</table>
			<br>
			<button type="submit">등록</button>
		</form:form>
		
		
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
	</footer>
	
</body>
</html>



















