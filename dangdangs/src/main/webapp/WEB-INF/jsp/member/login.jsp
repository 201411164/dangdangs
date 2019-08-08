<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${ pageContext.request.contextPath }/resources/js/naverLogin-2.0.0.js" charset="utf-8"></script>
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
		<div style="width: 40%">
			<form method="post" name="loginForm" onsubmit="return checkVal()">
				<table>
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
			<br>
			<div id="naverIdLogin">네이버</div>
			<script type="text/javascript">
				var naverLogin = new naver.LoginWithNaverId({
						clientId: "dpxE7LPJS2JOZ4Zdrke0",
						callbackUrl: "${ pageContext.request.contextPath }/login/naver",
						isPopup: false, /* 팝업을 통한 연동처리 여부 */
						loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
					}
				);
				
				/* 설정정보를 초기화하고 연동을 준비 */
				naverLogin.init();
			</script>
		</div>
	</div>
</body>
</html>