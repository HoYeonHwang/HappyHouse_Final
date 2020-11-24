<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../tripassets/css/main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<title>HappyHouse - 여행</title>
<style type="text/css">
h2{
font-family: 'Gugi', cursive;
}

</style>
</head>
<body>
	<!-- Header -->
	<header id="header">
		<div class="inner">
			<div class="content">
				<h1>Trip</h1>
				<h2>
					진정한 여행의 의미는<br /> 잠이아니라, 여행에서 옵니다.
				</h2>
				<a href="#" class="button big alt"><span>Let's Go</span></a>
			</div>
			<a href="#" class="button hidden"><span>Let's Go</span></a>
	
		</div>
	</header>
	<a href="${pageContext.request.contextPath}/" class="button"><span>Home</span></a>
	<!-- Main -->
	<div id="main">
		<div class="inner">
			<c:if test="${listcount > 0}">
				<c:forEach begin="0" end="${listcount-1}" step="8" varStatus="vs">
					<div class="columns">
						<c:forEach  begin="${vs.index}" end="${vs.index+7}" varStatus="count">
							<!-- Column 1 (horizontal, vertical, horizontal, vertical) -->
							<div class="image fit">
								<a href="/trip/tripSearchOne?tripId=${triplist[count.index].tripId}">
								<img src="../images/trip/${triplist[count.index].tripImg }" alt="" /></a>
								<h2>${triplist[count.index].tripHeader}</h2>
							</div>
						</c:forEach>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>

	<!-- Footer -->
	<footer id="footer">
		<a href="#" class="info fa fa-info-circle"><span>About</span></a>
		<div class="inner">
			<div class="content">
				<h2>
					집에서 쉬지만 마시고<br /> 다양한 곳을 여행하세요!
				</h2>
				<form action="${pageContext.request.contextPath}/trip/tripSearch" method="post">
					<input type="text" id="search" name="search">
					<br>
					<input type="submit" id="SearchBtn" value="검색">
				</form>
			</div>
			<div class="copyright">
				<h2>당신의 힐링 여행지를 공유해주세요!</h2>
				<a href="${pageContext.request.contextPath}/trip/tripWrite" style="margin-right: 20px;">
				<button>공유하기</button></a> <br>
				&copy; Untitled. Design: <a href="/">HwangHoYeon</a>. Images: <a href="/">HwangHoYeon</a>.
			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="../tripassets/js/jquery.min.js"></script>
	<script src="../tripassets/js/skel.min.js"></script>
	<script src="../tripassets/js/util.js"></script>
	<script src="../tripassets/js/main.js"></script>

</body>
</html>