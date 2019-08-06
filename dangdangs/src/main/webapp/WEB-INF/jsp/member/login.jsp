<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script>
if("${ param.msg }") alert("${ param.msg }");

function checkVal(){
	let form = document.loginForm;
	if (isNull(form.mid, "아이디를 입력하세요.")) return false;
	if (isNull(form.mpassword, "패스워드를 입력하세요.")) return false;
	return true;
}
</script>
</head>
<body>
	<h2>로그인화면</h2>
	<hr>
	<div align="center">
		<form method="post" name="loginForm" onsubmit="return checkVal()">
			<table style="width: 40%">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="mid"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" name="mpassword"></td>
					</tr>
				</table>
				<br>
				<button type="submit">로그인</button>
		</form>
	</div>
</body>
</html>