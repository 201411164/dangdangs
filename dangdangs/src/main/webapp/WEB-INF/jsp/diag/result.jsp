<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.dname{
	display: inline-block;
	width: 150px;
}

.bsum{
	width: 60%;
}

a:link, a:visited {
	color: #718ABE;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}

body > div > span:hover{
	cursor: pointer;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	var listSize = ${ fn:length(voList) }
	var spanStart = 2;
	var divStart = spanStart + 1 + listSize;
	
	$(document).ready(function(){
		for(var i = divStart; i < (divStart + listSize); i++){
			$("body > div > div:nth-child(" + i + ")").css("display", "none");
		}
		$("body > div > div:nth-child(" + divStart + ")").css("display", "block");
		$("body > div > span:nth-child(" + spanStart + ")").css("font-size", "30px");
		$("body > div > span:nth-child(" + spanStart + ")").css("color", "red");
	});
	
	function viewSummary(number){
		var spanid = spanStart + parseInt(number);
		var divid = divStart + parseInt(number);
		for(var i = spanStart; i < (spanStart + listSize); i++){
			$("body > div > span:nth-child(" + i + ")").css("font-size", "16px");
			$("body > div > span:nth-child(" + i + ")").css("color", "black");
		}
		$("body > div > span:nth-child(" + spanid + ")").css("font-size", "30px");
		$("body > div > span:nth-child(" + spanid + ")").css("color", "red");
		for(var i = divStart; i < (divStart + listSize); i++){
			$("body > div > div:nth-child(" + i + ")").css("display", "none");
		}
		$("body > div > div:nth-child(" + divid + ")").css("display", "block");
		
	}
</script>
</head>
<body>
	<h2>결과 페이지</h2>
	<hr>
	<div align="center">
		<h2>가장 유력한 질병은 ${ dnameList[0] } 입니다.</h2>
		<c:forEach items="${ voList }" var="vo" varStatus="status">
			<span class="dname"><strong onclick="viewSummary('${ status.index }')">${ vo.dname }</strong></span>
		</c:forEach>
		<hr>
		<c:forEach items="${ voList }" var="vo">
			<div class="bsum">
				<span>${fn:replace(vo.bsum, replaceChar, "<br/>") }</span>
				<br><br><br>
				<a href="${ pageContext.request.contextPath }/board/${ vo.bno }">자세히 보기</a>
			</div>
		</c:forEach>
	</div>
</body>
</html>