<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function joinCheck() {
		var form = document.joinform;
		
		if(form.memberNo.value == "") {  //form에 있는 memberNo 값이 없을 때
			alert("중복확인 버튼을 눌러 사용할 아이디를 입력하세요");  //경고창 띄움
			form.memberNo.focus();  //form에 있는 memberNo 위치로 이동
			return;
		}
		
		if(form.password.value == "") {
			alert("비밀번호를 적어주세요");
			form.password.focus();
			return;
		}

		if(form.memberName.value == "") {
			alert("이름을 적어주세요");
			form.memberName.focus();
			return;
		}
		
		if(form.phoneNo.value == "") {
			alert("전화번호를 적어주세요");
			form.phoneNo.focus();
			return;
		}
		
		if(form.email.value == "") {
			alert("이메일을 적어주세요");
			form.email.focus();
			return;
		}
		
		if(form.password.value != form.checkPassword.value) {
			alert("비밀번호를 다시 확인해주세요.");
			form.checkPassword.focus();
			return;
		}
		
		form.submit();
	}

	function noSpaceForm(obj) { // 공백사용못하게
	    var str_space = /\s/;  // 공백체크
	    if(str_space.exec(obj.value)) { //공백 체크
	        alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다.");
	        obj.focus();
	        obj.value = obj.value.replace(' ',''); // 공백제거
	        return false;
	    }
	 // onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
	}

	function checkId(memberNo) {
		var url = "/bytal/checkId?memberNo="+memberNo;
		var option = "width=370, height=200, resizable=no, scrollbars=no, status=no;";   
		window.open(url, "아이디 중복확인", option);
	}
	
	function getCheckId(memberNo) {
		joinform.memberNo.value = memberNo;
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
	<table width="100%" height="100%">
		<tr height="20%">
			<td colspan="2">
				<%@include file="/WEB-INF/jsp/web/main/top.jsp"%>
			</td>
		</tr>
		<tr>
			<td width="20%">
				<%@include file="left.jsp"%>
			</td>
			<td>
				<form name=joinform action="/bytal/join" method="post">
					<table width="70%" height="50%" align="center">
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">아이디(학번) &nbsp;</h4>
							</td>
							<td style="border: 0">
								<input type="text" name="memberNo" size="12" maxlength="130" 
								style="width: 50%; min-height: 50%;"onkeyup="noSpaceForm(this);" readonly="readonly"> 
								<input type="button" value="중복확인" onclick="javascript:checkId(this.form.memberNo.value)" class="btn">
							</td>
						</tr>
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">비밀번호 &nbsp;</h4>
							</td>
							<td style="border: 0"><input type="password" name="password"
								size="12" maxlength="20" style="width: 50%; min-height: 50%;"
								onkeyup="noSpaceForm(this);">
							</td>
						</tr>
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">비밀번호 확인 &nbsp;</h4>
							</td>
							<td style="border: 0"><input type="password" name="checkPassword"
								size="12" maxlength="20" style="width: 50%; min-height: 50%;"
								onkeyup="noSpaceForm(this);">
							</td>
						</tr>
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">이름 &nbsp;</h4>
							</td>
							<td style="border: 0"><input type="text" name="memberName"
								size="12" maxlength="18" style="width: 50%; min-height: 50%;"
								onkeyup="noSpaceForm(this);">
							</td>
						</tr>
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">전화번호 &nbsp;</h4>
							</td>
							<td style="border: 0"><input type="text" name="phoneNo"
								placeholder="(-)는 빼고 입력해주세요" size="12" maxlength="11"
								style="width: 50%; min-height: 50%;"
								onkeyup="noSpaceForm(this);" onKeyDown="javascript:onlyNumberInput()">
							</td>
						</tr>
						<tr>
							<td width="30%" height="50%" align="right" style="border: 0">
								<h4 width="30%">이메일 &nbsp;</h4>
							</td>
							<td style="border: 0"><input type="text" name="email"
								size="12" maxlength="50" style="width: 50%; min-height: 50%;"
								onkeyup="noSpaceForm(this);">
							</td>
						</tr>
						<tr>
							<td align="right" style="border: 0"></td>
							<td style="border: 0">
								<input type="button" value="회원가입" style="height: 30px; width: 80px"
								onclick="javascript:joinCheck();returnfalse" class="btn btn-primary">
								<input type="button" value="취소" style="height: 30px; width: 80px"
								onclick="javascript:history.back(-1)" class="btn">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
	<hr>개발문의사항 : <a href="https://open.kakao.com/o/gpVISyo">오픈카톡</a><p>
</div>
</body>
</html>