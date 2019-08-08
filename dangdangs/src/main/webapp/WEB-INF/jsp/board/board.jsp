<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/style.css">

<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>



</head>
<style>
th{
font-weight: 700; font-size:2rem; color:rgba(255,255,255,0.9);
}
#text1{
font-family:  San-serif; font-size:1.3rem; color:rgba(255,255,255,1);

}
#td1{
padding:0; margin:0;
width:3rem;
}
#tr1{
padding:0; margin:0;
width:3rem;
}
#tbody{
padding:0; margin:0;
width:3rem;
}
#table1{
padding:2rem; margin:1rem;
width:15rem;
height:100%;
white-space:nowrap;

}
</style>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<div class="backgroundForm"	
		style="background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/2.jpg'); ">
		<div class="container">
			<table class="table table-dark" id="table1" style="opacity: 0.8">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>글 제목</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ boardList }" var="board">
						<tr id="tr1">
							<td id="td1"><a id="text1"
								href="${ pageContext.request.contextPath }/board/${ board.bno }">${ board.bno }</a></td>
							<td id="td1"><a id="text1"
								href="${ pageContext.request.contextPath }/board/${ board.bno }">${ board.dname }</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="text-center">
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>