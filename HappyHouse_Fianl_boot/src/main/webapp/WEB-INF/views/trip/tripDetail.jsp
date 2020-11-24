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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
<style type="text/css">
h2{
font-family: 'Gugi', cursive;
}
p{
font-family: 'Sunflower', sans-serif;
font-size: 30px;
}
</style>
<title>HappyHouse - 여행</title>
</head>
	<body>
	
		<!-- Header -->
			<header id="header" class="preview">
				<div class="inner">
					<div class="content">
						<h1>Radius</h1>
						<h2>A fully responsive masonry style portfolio template.</h2>
					</div>
					<a href="/trip/tripMain" class="button hidden"><span>Let's Go</span></a>
				</div>
			</header>
		<!-- Main -->
			<div id="preview" class="vertical">
				<div class="inner">
					<div class="image fit" >
						<img src="../images/trip/${trip.tripImg}" alt="" />
					</div>
					<div class="content">
						<header>
							<h2>${trip.tripHeader}</h2>
						</header>
						<p>${trip.tripContent }</p>
						<p>${trip.tripDate } 작성</p>
					</div>
				</div>
			</div>
	<!-- Scripts -->
	<script src="../tripassets/js/jquery.min.js"></script>
	<script src="../tripassets/js/skel.min.js"></script>
	<script src="../tripassets/js/util.js"></script>
	<script src="../tripassets/js/main.js"></script>

</body>
</html>