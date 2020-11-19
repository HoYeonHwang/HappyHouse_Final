<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@include file ="/WEB-INF/views/sections/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Happy House!</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
	html, body {
            height: 100%;
        }

        .wrapper {
            height: 85%;
        }

        /* nav start */
        .btn-primary {
            margin-left: 20px;
        }

        h2 {
            color: white;
            font-weight: bold;
        }

        h1 {
            font-size: 50px;
            color: black;
        }
        
        h3 {
        	color: black;
            font-weight: bold;
        }

        .wrapper {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
		.main_context{
			position:relative;
			text-align : center;
			top:-250px;
			z-index: 0;
		}
		#index_h2{
			color : black;
			position: relative;
		}
		#index_p{
			color: black;
			position:relative;
		}
		#main_img{
			width:100%;
			height:400px;
			z-index : -1;
			opacity: 0.8;
			position:relative;
		}
		#btn_sitemap{
			position:relative;
		}
		#btn_notice{
			position:relative;
		}
	</style>
<body>
<!-- main contents start -->
<div class="wrapper">
	<div class="container">
		<header id="index_header" class="jumbotron text-center mb-1">
			<h2 id="index_h2">행복한 우리 집에 오신것을 환영합니다.</h2>
				<p id="index_p">회원 가입 하고 둘러보세요!</p>
				<a href="${pageContext.request.contextPath}/house/searchMain"><button id="btn_sitemap" class="btn btn-outline-success">사이트맵</button></a>
				<a href="${pageContext.request.contextPath}/board/boardMain"><button id="btn_notice" class="btn btn-outline-info">공지사항</button></a>
				<a href="${pageContext.request.contextPath}/house/qna"><button id="btn_qna" class="btn btn-outline-info">Q&A</button></a>
		</header>
		<!--  nav bar2 start -->
		<section id="index_section">
			<img src="https://post-phinf.pstatic.net/MjAxNzEyMDFfMTgg/MDAxNTEyMDkyMTA3NTY0.0EofFPIAghw0Ynr15TjEh3WPwHvSH2DVYY93HyOxg0Mg.KgUXctsB415ui1yuIyCh2DwhXk1tTVLzjvw-xIRPjwwg.PNG/image.png?type=w1200" id="main_img">
			<div class="main_context">
				
			</div>
		</section>
		<section id="sitemap_section">
		</section>
	</div>
</div>

</body>
</html>