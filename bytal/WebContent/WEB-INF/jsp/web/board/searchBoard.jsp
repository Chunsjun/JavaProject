<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div class="searchBoard">
		<select name="searchType">
			<option value="title">제목</option>
			<option value="writer">작성자(학번)</option>
		</select>
		<input type="text" name="searchKeyword" value="${board.searchKeyword}">
		<input type="submit" value="검색">
	</div>
</body>
</html>