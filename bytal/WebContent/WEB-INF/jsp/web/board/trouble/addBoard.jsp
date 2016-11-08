<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function formCheck() {
		var form = document.addBoardForm;
		
		if((form.title.value.trim() == "") || (form.title.value == null)) {
			alert("제목을 적어주세요");
			form.title.focus(); 
			return;
		}
		
		if((form.content.value.trim() == "") || (form.content.value == null)) {  
			alert("내용을 적어주세요");  
			form.content.focus();  
			return;
		}
		
		form.submit();
	}
	
	function cancelCheck(){
		if (confirm("정말 취소하시겠습니까??") == true){    //확인
		    history.back(-1);
		} else {   //취소
		    return;
		}
	}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:::Bytal Web:::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<script src="/bootstrap/js/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<table border="0" width="100%" height="500">
			<tr height="20%">
				<td colspan="2">
					<%@include file="/WEB-INF/jsp/web/main/top.jsp"%>
				</td>
			</tr>
			<tr>
				<td width="20%" valign="top">
					<%@include file="/WEB-INF/jsp/web/board/left.jsp"%>
				</td>
				<td style="padding:30px">
					<form name="addBoardForm" action="/bytal/board/trouble/addBoard" method="post">
						<table width="70%" height="50%" align="center" class="table" border="0">
							<tr>
								<td width="20%" height="10%" align="left" class="success">
									<h4>제목</h4>
								</td>
								<td valign="middle">
									<input type="text" name="title" size="50" align="bottom" class="form-control" maxlength="33">
								</td>
							</tr>
							<tr>
								<td width="20%" height="10%" align="left" class="success">
									<h4>아이디(학번)</h4>
								</td>
								<td align="left">
									<h5><c:out value="${sessionScope.memberNo}"/></h5>
								</td>
							</tr>
							<tr>
								<td width="20%" height="10%" align="left" class="success">
									<h4>내용</h4>
								</td>
								<td>
									<textarea rows="15" cols="70" name="content" style="resize:none;" class="form-control"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="button" value="글쓰기" onclick="javascript:formCheck();" class="btn btn-success">
									<input type="button" value="취소" onclick="javascript:cancelCheck();" class="btn">
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