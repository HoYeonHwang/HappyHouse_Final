<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happy House!</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
<style type="text/css">
h2 {
	font-family: 'Sunflower', sans-serif;
	font-size: 40px;
}

p {
	font-family: 'Sunflower', sans-serif;
	font-size: 25px;
}
</style>
<body class="subpage">

	<!-- Banner -->
	<!-- One -->
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="box">
				<div class="image fit">
					<img src="../images/main.jpg" alt="" />
				</div>
				<div class="content">
					<header class="align-center">
						<h2>Happy House 프로젝트</h2>
						<p>당신의 집뿐만아니라 당신의 생활을 삽니다.</p>
					</header>
					<hr />
					<p>SSAFY의 해피하우스 프로젝트는 대전3반 황호연과 김상원이 페어가 되어 시작된 프로젝트로 집을 구하는것, 더 나아가 한 사람의 일상과 하루를 책임지기 위해서 꾸준히 노력하여 개발된 프로젝트입니다.</p>
						<p>HappyHouse프로젝트는 힐링을 주제로 집을 구하고 다양한 정보 제공을 베이스로 제작되었습니다. 
						부동산 관련 뉴스, 이사관련 마켓, 힐링 여행지 추천, 주변 상권 및 정보조회, 등 힐링을 주제로 여러 기능을 제공할 뿐만 아니라 개인이 마땅히 누려야할 여가생활과 한 사람의 일생을 풍요롭게 만들기 위한 다양한 기능들을 직관적으로 제공하기 위해 노력하고있습니다. 
						또한, 이에 그치지 않고 다양한 기능들을 구상하며 차츰 발전된 프로젝트를 구상하며 앞으로 나아가고 있습니다.</p>
						<p>HappyHouse 방구하기  <br>HaapyHouse 방구하기는 원하는 지역의 아파트, 주택 매물을 검색할 수 있도록 만들어진 기능입니다. 더 나아가 주변에 어떤 상가들이 있는지 알 수 있어 선택에 도움이 될 것입니다. 집을 구하고 있다면 방구하기 기능을 이용해 보는 것은 어떨까요?</p>
						<p>News 뉴스  <br> HappyHouse 뉴스는 힐링이라는 키워드를가지고 뉴스 페이지를 크롤링하여 사용자들에게 제공하기 위해 만들어진 기능입니다. 하루하루 겉잡을 수 없이 변해가는 정보화 사회에서 다양한 정보를 아는것이 진정한 힐링으로의 시작되지 않을까요? </p>
						<p>Market 마켓 <br> HappyHouse 마켓은 자본주의 사회에서 소비야 말로 진정한 힐링이다 라는 이데올로기에서 출발하였습니다. 다양한 사람들이 다양한 물품들을 다양한 가격으로 판매하는것이 건전한 소비생활을 만드는것이고 이것이 HappyHouse에서 추구하는 힐링입니다.HappyHouse 마켓은 다양한 상품들을 선보이며 고객님들의 FLEX를 응원합니다. </p>
						<p>Trip 여행  <br> HappyHouse여행은 집에서 쉬고 잠자는것만이 힐링이 아닌 훌쩍 여행을 떠나며 낭만, 젊음, 사랑을 느끼는것에서 온다는 이데올로기에서 출발하였습니다. 포스트 코로나 시대에 어디론가 훌쩍 떠날 순 없지만 내가 느꼇던 다양한 낭만과 젊음, 사랑을 다른 사람들과 공유하며 새로운 세계를 선보이는것도 또 하나의 여행이 될 수 있지 않을까요?</p>
						<p>Community 게시판  <br> HappyHouse게시판은 HappyHouse를 이용하는 사용자들의 다양한 소식을 접할 수 있는 게시판입니다. HappyHouse를 이용하는 누구라도 게시판의 다양한 소식을 올려주세요!</p>
						<p>Q&A  <br> HappyHouse에 질문이 있거나 문제점은 언제든디 Q&A에 올려주세요!</p>
				</div>
			</div>
		</div>
	</section>

	<!-- two -->
	<section id="two" class="wrapper style3">
		<div class="inner">
			<div id="flexgrid">
				<div>
					<header>
						<h3>Market</h3>
					</header>
					<p>HappyHouse의 고객들의 Flex를 위한 다양한 상품을 공유해 보세요</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/shop/shopMain" class="button alt">Learn More</a></li>
					</ul>
				</div>
				<div>
					<header>
						<h3>Trip</h3>
					</header>
					<p>낭만,젊음,사랑</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/trip/tripMain" " class="button alt">Learn More</a></li>
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
				
			</div>
		</div>
	</section>
</body>
</html>