<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file ="/WEB-INF/views/sections/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HappyHouse-뉴스</title>
	<link rel="shortcut icon" href="img/favicon.ico">
</head>
<style>
	.a {
        background-image: url( "../images/6.jpg" );
        background-repeat : no-repeat;
		background-size : cover;
      }
</style>
<body>
<div class="a">
	<div class="container">
		<header id="index_header" class="jumbotron text-center mb-1"></header>
		<!-- notice list start -->
		<table border="1" class="table table-hover" style="margin-top:10px;">
			<tr id="notice_title">
				<th colspan="5" style="color:white;">뉴스</th>
			</tr>
			<tr>
				<th>헤드</th>
				<th>본문</th>
				<th>이미지</th>
				<th>신문사</th>
				<th>날짜</th>
	
			</tr>
					<c:forEach items="${newsList}" var="news">
						<tr>
							<td>${news.newsHeader}</td>
							<td>${news.newsContent}</td>
							<td>${news.newswriting}</td>
							<td>${news.newsdate}</td>
							<td><img src="${newsImg}"/></td>
						</tr>
					</c:forEach>
		</table>
</div>
</div>
</body>
</html>