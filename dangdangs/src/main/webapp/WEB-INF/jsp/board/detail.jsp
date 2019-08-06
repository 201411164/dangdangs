<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td{
	border: 1px solid #D4E0EE;
	border-collapse: collapse;
	color: #555;
}

th, td{
	padding: 5px;
}

table.list tr:nth-child(odd){
	background-color: #F7F9D2;
}

</style>
</head>
<body>
	<h2>상세보기</h2>
	<hr>
	<div align="center">
		<table style="width: 80%">
			<tr>
				<th style="width: 7%">${ vo.bno }</th>
				<th style="width: 80%">${ vo.dname }</th>
				<td>${ vo.bdate }</td>
			</tr>
			<tr>
				<th style="width: 7%">요약</th>
				<td colspan="2">${ vo.bsum }</td>
			</tr>
			<tr>
				<th style="width: 7%">원인</th>
				<td colspan="2">${ vo.bcause }</td>
			</tr>
			<tr>
				<th style="width: 7%">치료법</th>
				<td colspan="2">${ vo.btreat }</td>
			</tr>
			<tr>
				<th style="width: 7%">관리법</th>
				<td colspan="2">${ vo.bcare }</td>
			</tr>
		</table>
	</div>
</body>
</html>