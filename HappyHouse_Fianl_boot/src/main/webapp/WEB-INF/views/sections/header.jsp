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
<!-- Header -->
			<header id="header" >
				<div class="logo"><a href="/">HappyHouse <span>by HwangHoYeon</span></a></div>
				<a href="#menu" class="toggle"><span>Menu</span></a>
			</header>
<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="${pageContext.request.contextPath}/">Home - 홈</a></li>
					<li><a href="${pageContext.request.contextPath}/projectInfo">Project - 프로젝트</a></li>
					<li><a href="${pageContext.request.contextPath}/house/searchMain">Happyhouse - 방구하기</a></li>
					<li><a href="#">News - 뉴스</a></li>
					<li><a href="/sale.html">Shop - 쇼핑</a></li>
					<li><a href="${pageContext.request.contextPath}/board/boardMain">Community - 게시판</a></li>
					<li><a href="${pageContext.request.contextPath}/house/qna">Q&A - 질문</a></li>
					<li><a href="${pageContext.request.contextPath}/user/login">Login - 로그인</a></li>
				</ul>
			</nav>
<!-- <!-- nav bar start --> 
<!-- 	<nav class="navbar navbar-light bg-dark"> -->
<%--     <a href="${pageContext.request.contextPath}/" class="navbar-brand"><h2>Happy House</h2></a> --%>
<!--     <div class="form-inline"> -->
<%--         <c:if test="${empty userinfo}"> --%>
<%--             <a href="${pageContext.request.contextPath}/user/register"> --%>
<!--                 <button class="btn btn-warning">회원가입</button> -->
<!--             </a> -->
<%--             <a href="${pageContext.request.contextPath}/user/login"> --%>
<!--                 <button class="btn btn-primary">로그인</button> -->
<!--             </a> -->
<%--         </c:if> --%>
<%--         <c:if test="${not empty userinfo}"> --%>
<%--             <c:if test="${logininfo eq 'admin'}"> --%>
<%--                     <a href="${pageContext.request.contextPath}/admin/list"> --%>
<!--                     <button class="btn btn-danger">관리자</button> -->
<!--                 </a> -->
<%--                 <a href="${pageContext.request.contextPath}/user/info?userid=${userinfo.userid}"> --%>
<!--                     <button class="btn btn-primary">내정보</button> -->
<!--                 </a> -->
<%--             </c:if> --%>
<%--             <c:if test="${logininfo ne 'admin'}"> --%>
<%--                 <a href="${pageContext.request.contextPath}/user/info?userid=${userinfo.userid}"> --%>
<!--                     <button class="btn btn-primary">내정보</button> -->
<!--                 </a> -->
<%--             </c:if> --%>
<%--             <a href="${pageContext.request.contextPath}/user/logout"> --%>
<!--                 <button class="btn btn-primary">로그아웃</button> -->
<!--             </a> -->
<%--         </c:if> --%>
<!--     </div> -->
<!-- </nav> -->
<!--  nav bar end -->
</body>
</html>