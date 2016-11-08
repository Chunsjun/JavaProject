<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function passwordCheck() {
		var form = document.passwordCheckForm;
		
		if(form.password.value == "") {
			alert("비밀번호를 입력 해주세요");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:::Bytal Web:::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<script src="/bootstrap/js/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<table width="100%" height="500">
		<tr height="20%">
			<td>
				<%@include file="/WEB-INF/jsp/web/main/top.jsp"%>
			</td>
		</tr>
		<tr>
			<td>
				<form action="/bytal/editMemberCheck" method="post" name="passwordCheckForm">
					<table width="70%" height="50%" align="center">
						<tr>
							<td width="40%" height="50%" align="right" style="border: 0">
								<h3 width="30%">비밀번호 &nbsp; </h3>
							</td>
							<td style="border: 0">
								<input type="password" name="password" size="12" maxlength="130" style="width: 50%; min-height: 50%;" class="form-control" onkeypress="if(event.keyCode==13) {passwordCheck(); return false;}">
							</td>
						</tr>
						<tr>
							<td align="center" style="border: 0" colspan="2">
								<input type="button" value="확인" class="btn btn-success"
								style="height:30px; width:80px;" onclick="javascript:passwordCheck();">
								<input type="button" value="취소" class="btn btn-default"
								style="height:30px; width:80px;" onclick="javascript:history.back(-1)">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</div>
</body>
</html>