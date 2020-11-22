<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happy House!</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<body>
	<!-- main contents start -->
	<!-- Header -->
	<header id="header" class="alt">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/">
				HappyHouse <span>by HwangHoYeon</span>
			</a>
		</div>
		<a href="#menu" class="toggle">
			<span>Menu</span>
		</a>
	</header>
	<!-- Nav -->
	<c:if test="${empty userinfo}">
		<nav id="menu">
			<ul class="links">
				<li><a href="${pageContext.request.contextPath}/">Home - 홈</a></li>
				<li><a href="${pageContext.request.contextPath}/projectInfo">Project - 프로젝트</a></li>
				<li><a href="${pageContext.request.contextPath}/house/searchMain">Happyhouse - 방구하기</a></li>
				<li><a href="${pageContext.request.contextPath}/news/newsMain">News - 뉴스</a></li>
				<li><a href="${pageContext.request.contextPath}/shop/shopMain">Shop - 쇼핑</a></li>
				<li><a href="${pageContext.request.contextPath}/board/boardMain">Community - 게시판</a></li>
				<li><a href="${pageContext.request.contextPath}/house/qna">Q&A - 질문</a></li>
				<li><a href="${pageContext.request.contextPath}/user/register">Signin - 회원가입</a></li>
				<li><a href="${pageContext.request.contextPath}/user/login">Login - 로그인</a></li>
			</ul>
		</nav>
	</c:if>

	<c:if test="${not empty userinfo}">
		<nav id="menu">
			<ul class="links">
				<li><a href="${pageContext.request.contextPath}/">Home - 홈</a></li>
				<li><a href="${pageContext.request.contextPath}/projectInfo">Project - 프로젝트</a></li>
				<li><a href="${pageContext.request.contextPath}/house/searchMain">Happyhouse - 방구하기</a></li>
				<li><a href="${pageContext.request.contextPath}/news/newsMain">News - 뉴스</a></li>
				<li><a href="${pageContext.request.contextPath}/shop/shopMain">Shop - 쇼핑</a></li>
				<li><a href="${pageContext.request.contextPath}/board/boardMain">Community - 게시판</a></li>
				<li><a href="${pageContext.request.contextPath}/house/qna">Q&A - 질문</a></li>
				<c:if test="${logininfo eq 'admin'}">
					<li><a href="${pageContext.request.contextPath}/admin/list">관리자</a></li>
				</c:if>
				<li><a href="${pageContext.request.contextPath}/user/info?userid=${userinfo.userid}">내정보</a></li>
				<li><a href="${pageContext.request.contextPath}/user/logout">Logout - 로그아웃</a></li>
			</ul>
		</nav>
	</c:if>
	<!-- Banner -->
	<!--
			To use a video as your background, set data-video to the name of your video without
			its extension (eg. images/banner). Your video must be available in both .mp4 and .webm
			formats to work correctly.
		-->
	<section id="banner" data-video="images/Main.mp4">
		<video src="images/Main.mp4" autoplay="autoplay" muted="muted" loop></video>
		<div class="inner">
			<h1>당신은 결국,</h1>
			<br>
			<h1>집으로 돌아올거에요</h1>
			<p>
				당신의 집뿐만아니라 당신의 생활을 삽니다.<br /> SSAFY - HappyHouse 프로젝트
			</p>
		</div>
	</section>
	<!-- One -->
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div>
				<div class="box">
					<div class="image fit">
						<img src="images/4.jpg" alt="" />
					</div>
					<div class="content">
						<header class="align-center">
							<h2>Happy House 프로젝트</h2>
							<p>당신의 집뿐만아니라 당신의 생활을 삽니다.</p>
						</header>
						<hr />
						<p>SSAFY의 해피하우스 프로젝트는 대전3반 황호연과 김상원이 페어가 되어 시작된 프로젝트로 집을 구하는것, 더 나아가 한 사람의 일상과 하루를 책임지기 위해서 꾸준히 개발하며 노력한 프로젝트입니다.</p>
						<p>HappyHouse프로젝트는 집을 구하기위한 정보 제공을 베이스로 제작되었습니다. 부동산 관련 뉴스, 이사관련 준비 아이템, 등 여러 기능을 제공할 뿐만 아니라 개인이 마땅히 누려야할 여가생활과 한 사람의 일생을 책임지기 위한 다양한 기능들을 직관적으로 제공하기 위해 노력하고있습니다. 또한, 이에 그치지 않고 다양한 기능들을 구상하며</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Three -->
	<section id="three" class="wrapper style2">
		<div class="inner">
			<div class="grid-style">
				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/10.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<h2>부동산 뉴스</h2>
								<p>현명한 선택을 위한 다양한 뉴스</p>
							</header>
							<hr />
							<p>HappyHouse프로젝트는 보다 다양한 정보를 제공하기 위해 최신 부동산 뉴스들을 시각적으로 제공해줍니다.</p>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/11.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<h2>이사 필수템</h2>
								<p>이사를 위한 준비과정과 다양한 준비아이템</p>
							</header>
							<hr />
							<p>HappyHouse프로젝트는 이사를 위한 일련의 과정을 제시하여 줍니다. 또한 이사에 필요한 다양한 아이템들을 싼 가격에 소비자들에게 제공해주고 공유해주고 있습니다.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Two -->
	<section id="two" class="wrapper style3">
		<div class="inner">
			<div id="flexgrid">
				<div>
					<header>
						<h3>Q&A</h3>
					</header>
					<p>현재 겪고계신 다양한 문의사항을 해결해드립니다.</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/house/qna" " class="button alt">Learn More</a></li>
					</ul>
				</div>
				<div>
					<header>
						<h3>Community</h3>
					</header>
					<p>집과 동네 다양한 소식들을 접할 수 있습니다.</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/board/boardMain" class="button alt">Learn More</a></li>
					</ul>
				</div>
				<div>
					<header>
						<h3>맛집 추천</h3>
					</header>
					<p>동네의 다양한 맛집들을 저희가 대신 추천해드립니다.</p>
					<ul class="actions">
						<li><a href="#" class="button alt">Learn More</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>