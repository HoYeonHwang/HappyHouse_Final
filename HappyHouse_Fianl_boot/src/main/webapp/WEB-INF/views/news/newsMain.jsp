<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HappyHouse-뉴스</title>
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="../assets/css/skel.css" />
<link rel="stylesheet" href="../assets/css/style.css" />
<link rel="stylesheet" href="../assets/css/style-wide.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
<style type="text/css">
h2{
font-family: 'Gugi', cursive;
}
p{
font-family: 'Sunflower', sans-serif;
font-size: 20px;
}
.a {
	background-image: url( "../images/newsMain.jpg" );
	background-repeat: no-repeat;
	background-size: 2000px 2000px;
}
</style>
<body>
	<div class="a">
		<!--  banner -->
		<section id="banner">
			<div class="inner">
				<h1>관심 있어 할 만한,</h1>
				<br>
				<h1>뉴스를 알려드릴게요.</h1>
				<p>관심있는 뉴스를 크롤링하여 알려드립니다.</p>
			</div>
		</section>
		<!-- Extra -->

		<div id="extra">
			<div class="container">
				<c:forEach begin="0" end="${listcount-1}" step="3" varStatus="vs">
					<div class="row no-collapse-1">
						<c:forEach items="${newsList}" var="news" begin="${vs.index}" end="${vs.index+2}" varStatus="count">
							<section class="4u">
								<a href="${news.newsImg}" class="image featured">
									<img src="${news.newsImg }" alt="">
								</a>
								<div class="box">
									<p>${news.newsHeader}
										<br>
									</p>
									<p>${news.newsContent}
										<br>
										<br> ${news.newswriting} ${news.newsdate} <br>
									</p>
									<a href="#" class="button">Read More</a>
								</div>
							</section>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>