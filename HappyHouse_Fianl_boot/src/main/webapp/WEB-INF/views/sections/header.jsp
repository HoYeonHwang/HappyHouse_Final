<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
			<link rel="stylesheet" href="../assets/css/main.css" />
	<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
</head>
<body class="subpage">
<header id="header">
		<div class="logo"><a href="/">HappyHouse <span>by HwangHoYeon</span></a></div>
		<a href="#menu" class="toggle"><span>Menu</span></a>
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
						<li><a href="${pageContext.request.contextPath}/user/login">Signin - 회원가입</a></li>
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
</body>
</html>