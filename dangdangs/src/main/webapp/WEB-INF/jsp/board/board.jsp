<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
<link rel="stylesheet" href="resources/css/board.css">
<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>



</head>
<style>
#table1{
padding:0 auto; margin: 0 auto;
height:100%;
white-space:nowrap;
overflow:hidden;
text-overflow: ellipsis;
margin-top: 2rem;
}


#table1>tbody>tr>td{
 padding:0 5px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  ; 
}
#table1>tbody>tr>td>a{
font-family:  San-serif; font-size:1.3rem; color:white; padding:0 5px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; 
}
#table1>tbody>tr>td>a:hover{color:highlight;}
#table1>thead>tr>th{
font-weight: 700; font-size:3rem; color:rgba(250,250,250,0.9);  text-align:left;

overflow:hidden; height:3.3rem;	
}

.btreat{
padding:0 5px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; text-align:left;
color:red;}


</style>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<div class="backgroundForm"	
		style="background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/2.jpg'); ">
		<div class="table-responsive">
			<table class="table table-dark table-bordered table-striped" id="table1" style="opacity:0.7; border: 5px solid #dee2e6;">
				<thead>
					<tr class="container">
						<th id="bno">글 번호</th>
						<th id="dname">글 제목</th>
						<th id="btreat">글 내용</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ boardList }" var="board">
						<tr class="container" >
							<td ><a	href="${ pageContext.request.contextPath }/board/${ board.bno }">${ board.bno }</a></td>
							<td ><a	href="${ pageContext.request.contextPath }/board/${ board.bno }">${ board.dname }</a></td>
							<td class="container btreat"><a href="${pageContext.request.contextPath }/board/${ board.bno }">${ board.btreat}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			
		</div>
	</div>
</body>
</html>