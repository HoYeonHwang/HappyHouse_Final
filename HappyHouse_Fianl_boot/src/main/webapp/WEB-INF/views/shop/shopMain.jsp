<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file ="/WEB-INF/views/sections/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HappyHouse-샵</title>
	<link rel="shortcut icon" href="img/favicon.ico">
 	<link rel="stylesheet" href="../assets/css/skel.css" />
	<link rel="stylesheet" href="../assets/css/style.css" />
	<link rel="stylesheet" href="../assets/css/style-wide.css" />
</head>
<style>
 	.a { 
        background-image: url( "../images/bg.jpg" );
        background-repeat : no-repeat;
		background-size : 2000px 2000px;
      }
</style>
<script type="text/javascript"> 
//  $(document).ready(function(){
//  	$("#SearchBtn").click(function(){
//  	if($("#search").val()){
//  		$.ajax({
//  			url:'${pageContext.request.contextPath}/shop/shopSearch',
//  			data:{'search':$("#search").val()},
//  			method : 'POST',
//  			contentType : 'application/json; charset="UTF-8"',
//  				success:function(result){
//  						console.log(result);
//  						$.each(result, function(index, vo) {
//  							});//each
//  						},//success
//  				error:function(request,status,error){
// 					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
//  				}// error
//  		}) // ajax
//  	}else {
//  		alert("검색어를 입력해주세요");
//  		return false;
//  	}
//  	});
//  });//ready
</script>

<body>
<div class="a">
<!--  banner -->
<section id="banner" >
				<div class="inner">
					<h1>이사에 도움이 되는</h1><br>
					<h1>상품들을 소개해드릴게요</h1>
					<p>같은 동네의 주민들이 팔고있는 상품들을 소개시켜 드립니다.</p> <br><br>
					<form action="${pageContext.request.contextPath}/shop/shopSearch" method = "post">
					<input type="text" id="search" name="search"> <br>
					<input type="button" id="SearchBtn" value="키워드">
					</form>
				</div>
			</section>
<!-- Extra -->
<div id="extra">
						<div class="container">
							<c:forEach begin="0" end="${listcount-1}" step="3" varStatus="vs">
							<div class="row no-collapse-1">
								<c:forEach items = "${shoplist}" var ="shop" begin="${vs.index}" end="${vs.index+2}" varStatus ="count">
								<section class="4u"> <a href="${shop.productimg}" class="image featured"><img src="../images/temp.jpg" alt=""></a>
									<div class="box">
										<p>${shop.productHeader} <br> </p>
										<p>${shop.productPrice} -> ${shop.productRate}<br><br> ${shop.productReview}   <br> </p>
										<a href="#" class="button">Read More</a> </div>
								</section>
 								</c:forEach> 
							</div>
							</c:forEach>
						</div>
					</div>
</div>
</body>
</html>