<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="100%" height="500">
		<tr height="30%">
			<td colspan="2"><%@ include file="top.jsp"%>
			</td>
		</tr>
		<tr height="70%">
			<td width="20%"><%@ include file="left.jsp"%>
			</td>
			<td width="80%">
				<table border="1" width="100%">
					<tr align="center">
						<td nowrap width="100">글번호</td>
						<td>글제목</td>
						<td nowrap width="100">글쓴이</td>
						<td nowrap width="100">작성일</td>
					</tr>
					<c:forEach var="a" items="${board}">
						<tr align="right">
							<td align="center">${a.bNum}</td>
					<td align="center"><a href="/readBoard">${a.bTitle}</a></td>
							<td>${a.bWriter}</td>
							<td>${a.bDate}</td>
						</tr>
					</c:forEach>
				</table>
				<p>
					<c:if test="${sessionScope.num != 0 }">
						<div align="right">
							<a href="/writeBoard">글쓰기</a> <a href="">글삭제</a>
						</div>
					</c:if>
			</td>
		</tr>
	</table>
</body>
</html>