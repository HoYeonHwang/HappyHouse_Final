<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.a {
	background-image: url( "../images/6.jpg" );
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="a">
		<div class="wrapper">
			<h1>Notice</h1>
			<form action="${pageContext.request.contextPath}/board/boardProcess" method="post">
				<div class="form-group" align="left">
					<label for=title style="display: block">제목:</label>
					<input type="text" class="form-control" id="btitle" name="btitle" placeholder="제목을 입력하세요." required>
				</div>
				<div class="form-group" align="left">
					<label for=content style="display: block">내용:</label>
					<textarea class="form-control" id="bcontent" rows="15" cols="50" name="bcontent" placeholder="내용을 입력하세요."></textarea>
				</div>
				<div style="text-align: right; display: block">
					<input type="submit" class="btn btn-primary" value="작성완료">
				</div>
			</form>
		</div>
	</div>

</body>
</html>