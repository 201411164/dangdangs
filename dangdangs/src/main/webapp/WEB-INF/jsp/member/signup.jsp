<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	var isChecked = {
			id: 0,
			nickname: 0
	}

	function validCheck(idx){
		let tagId;
		if (idx == 0) tagId = "#id";
		else tagId = "#nick";
		let val = $(tagId).val();
		$.ajax({
			url: "${ pageContext.request.contextPath }/signup/valid",
			data: {
				index: idx,
				query: val
			},
			type: "post",
			success: function(data){
				if (data == ""){
					if (idx == 0){
						$("#idchk").text(val + "은 사용 가능한 아이디입니다.");
						isChecked.id = 1;
					} else{
						$("#nickchk").text(val + "은 사용 가능한 닉네임입니다.");
						isChecked.nickname = 1;
					}
				} else {
					if (idx == 0) {
						$("#idchk").text(val + "은 사용 불가능한 아이디입니다." );
						isChecked.id = 0;
					} else{
						$("#nickchk").text(val + "은 사용 불가능한 닉네임입니다." );
						isChecked.nickname = 0;
					}
				}
				if (isChecked.id == 1 && isChecked.nickname == 1) $("#submit").attr("disabled", false)
				else $("#submit").attr("disabled", true)
			}
		});
	}
</script>
</head>
<body>
	<h2>회원가입</h2><br>
	<div align="center">
		<form:form method="post" commandName="memberVO">
			<table>
				<tr>
					<th width="20%">아이디</th>
					<td><form:input id="id" path="mid" size="30"/></td>
					<td><input type="button" value="중복확인" onclick="validCheck(0)"></td>
				</tr>
				<tr>
					<td></td>
					<td><form:errors path="mid" class="error" /><label id="idchk">&nbsp;</label></td>
				</tr>
				<tr>
					<th width="20%">비밀번호</th>
					<td><form:input type="password" path="mpassword" size="30"/></td>
				</tr>
				<tr>
					<td></td>
					<td><form:errors path="mpassword" class="error" />&nbsp;</td>
				</tr>
				<tr>
					<th width="20%">별명</th>
					<td><form:input id="nick" path="mnick" size="30"/></td>
					<td><input type="button" value="중복확인" onclick="validCheck(1)"></td>
				</tr>
				<tr>
					<td></td>
					<td><form:errors path="mnick" class="error" /><label id="nickchk">&nbsp;</label></td>
				</tr>
			</table>
			<br><button id="submit" type="submit" disabled="disabled">가입하기</button>
		</form:form>
	</div>
</body>
</html>