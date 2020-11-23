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
<body class="subpage">

	<!-- Banner -->
	<!-- One -->
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="box">
				<div class="image fit">
					<img src="../images/4.jpg" alt="" />
				</div>
				<div class="content">
					<header class="align-center">
						<h2>Happy House 프로젝트</h2>
						<p>당신의 집뿐만아니라 당신의 생활을 삽니다.</p>
					</header>
					<hr />
					<p>SSAFY의 해피하우스 프로젝트는 대전3반 황호연과 김상원이 페어가 되어 시작된 프로젝트로 집을 구하는것, 더 나아가 한 사람의 일상과 하루를 책임지기 위해서 꾸준히 개발하며 노력한 프로젝트입니다.</p>
					<p>HappyHouse프로젝트는 집을 구하기위한 정보 제공을 베이스로 제작되었습니다. 부동산 관련 뉴스, 이사관련 준비 아이템, 등 여러 기능을 제공할 뿐만 아니라 개인이 마땅히 누려야할 여가생활과 한 사람의 일생을 책임지기 위한 다양한 기능들을 직관적으로 제공하기 위해 노력하고있습니다. 
					또한, 이에 그치지 않고 힐링과 관련된 다양한 기능들을 구상하며 사용자에게 편의를 주기위한 목적으로 개발되고 있는 프로젝트입니다.  </p>
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
						<li><a href="#" class="button alt">Learn More</a></li>
					</ul>
				</div>
				<div>
					<header>
						<h3>마켓</h3>
					</header>
					<p>HappyHouse의 고객들의 Flex를 위한 다양한 상품을 공유해 보세요</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/shop/shopMain" class="button alt">Learn More</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
</body>
</html>