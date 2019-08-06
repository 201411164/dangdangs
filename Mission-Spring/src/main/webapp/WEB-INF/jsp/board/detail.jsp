<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('#delBtn').click(function() {
			if(confirm("${board.no}게시물을 삭제하시겠습니까?")) {
			// 동기식 삭제
			// location.href = "${ pageContext.request.contextPath }/board/remove/${board.no}"; 
			
			// 비동기 삭제
			$.ajax({
				type : "delete",
				url : "${ pageContext.request.contextPath }/board/${ board.no }",
				success : function(data) {
					let jsonData = JSON.parse(data);
					if(jsonData.flag) {
						location.href = "${ pageContext.request.contextPath }/board";
					}
					
				}
			});
			}
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
			<br>
			<hr>
			<h2>게시판 상세</h2>
			<hr>
			<br>
			<table>
				<tr>
					<th width="25%">번호</th>
					<td>${ board.no }</td>
				</tr>
				<tr>
					<th width="25%">제목</th>
					<td>${ board.title }</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>${ board.writer }</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>${ board.content }</td>
				</tr>
				<tr>
					<th width="25%">조회수</th>
					<td>${ board.viewCnt }</td>
				</tr>
				<tr>
					<th width="25%">등록일</th>
					<td>${ board.regDate }</td>
				</tr>
			</table>
			<br>
			<button id="updateBtn">수정</button>&nbsp;&nbsp;&nbsp;
			<button id="delBtn">삭제</button>&nbsp;&nbsp;&nbsp;
		</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
	</footer>
	
</body>
</html>