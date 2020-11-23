<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HappyHouse-샵</title>
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="../assets/css/skel.css" />
<link rel="stylesheet" href="../assets/css/style.css" />
<link rel="stylesheet" href="../assets/css/style-wide.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
.a {
	background-image: url( "../images/bg.jpg" );
	background-repeat: no-repeat;
	background-size: cover;
}
div.box p{
font-family: 'Gugi', cursive;
}
td{
font-family: 'Gugi', cursive;
	font-size:20px;
}
p.h{
	font-size:50px;
}
p.p{
font-weight:300px;
	font-size:15px;
	text-decoration:line-through
}
p.r{
font-weight:500px;
	font-size:30px;
}p.R{
font-weight:700px;
	font-size:15px;
}
.blinking{
	-webkit-animation:blink 1.5s ease-in-out infinite alternate;
    -moz-animation:blink 1.5s ease-in-out infinite alternate;
    animation:blink 1.5s ease-in-out infinite alternate;
    font-weight:700px;
	font-size:30px;
}
@-webkit-keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
}
@-moz-keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
}
@keyframes blink{
    0% {opacity:0;}
    100% {opacity:1;}
}


출처: https://pikabu.tistory.com/77 [피카부]
</style>
<script type="text/javascript">
	 $(document).ready(function(){
	 	$(".ReadMore").click(function(){
	 	if($(".ReadMore").val()){
	 		console.log(this.value);
	 		let modifyinfo = JSON.stringify({
				"productId":this.value,
			});
	 		$.ajax({
	 			url:'${pageContext.request.contextPath}/shop/shopRead',
				dataType: "json",
				data : modifyinfo,
	 			method : 'PUT',
	 			contentType : 'application/json; charset="UTF-8"',
	 				success:function(result){
	 						console.log(result);
	 						},//success
	 				error:function(request,status,error){
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	 				}// error
	 		}) // ajax
	 		$.ajax({
	 			url:'${pageContext.request.contextPath}/shop/shopSearchOne',
				dataType: "json",
				data : {"productId":this.value},
	 			method : 'GET',
	 			contentType : 'application/json; charset="UTF-8"',
	 				success:function(result){
	 						console.log(result);
	 						$(".modalHeader").html(result.productHeader);
	 						$(".modalPrice").html(result.productPrice);
	 						$(".modalRate").html(result.productRate);
	 						$(".modalNick").html(result.productNick);
	 						$(".modalPhone").html(result.productPhone);
	 						$(".modalTime").html(result.productTime);
	 						$(".modalReview").html(result.productReview);
	 						if(result.prodcutBook==1){
	 							$(".modalBook").html("예약중");
	 						}
	 						else {
	 							$(".modalBook").html("판매중");
	 						}
	 						$(".modalimg").html(result.productimg);
	 						$(".modalContent").html(result.productContent);
	 						},//success
	 				error:function(request,status,error){
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	 				}// error
	 		}) // ajax
	 	}else {
	 		alert("데이터를 읽어오는 도중에 오류가 발생하였습니다.");
	 		return false;
	 	}
	 	});
	 	
	 });//ready
</script>

<body>
	<div class="a">
		<!--  banner -->
		<section id="banner">
			<div class="inner">
				<h1>건전한 소비야 말로,</h1>
				<br>
				<h1>진정한 힐링이 아닐까요?</h1>
				<p>HappyHouse 마켓은 다양한 상품들을 선보이며 고객님들의 FLEX를 응원합니다.</p>
				<br> <br>
				<form action="${pageContext.request.contextPath}/shop/shopSearch" method="post">
					<input type="text" id="search" name="search">
					<br>
					<input type="submit" id="SearchBtn" value="키워드">
				</form>
			</div>
		</section>
		<!-- Extra -->
		<div style="text-align: right;">
			<a href="${pageContext.request.contextPath}/shop/shopWrite" style="margin-right: 20px;">
				<button class="button">글작성</button>
			</a>
		</div>
		<div id="extra">
			<div class="container">
			<c:if test="${listcount > 0}">
				<c:forEach begin="0" end="${listcount-1}" step="3" varStatus="vs">
					<div class="row no-collapse-1">
						<c:forEach items="${shoplist}" var="shop" begin="${vs.index}" end="${vs.index+2}" varStatus="count">
							<section class="4u">
								<a href="../images/${shop.porductImg}" class="image featured">
									<img src="../images/${shop.porductImg}" alt="">
								</a>
								<div class="box">
									<p class ="h">${shop.productHeader}</p>
									<p class ="p">${shop.productPrice}원</p>
									<p class ="r">${shop.productRate}원</p>
									<c:if test="${shop.productBook==1}">
									<p class = "blinking" style ="color: red;">예약중</p>
									</c:if>
									<c:if test="${shop.productBook==0}">
									<p class = "blinking" style ="color:#21c8b0;">판매중</p>
									</c:if>
									<p class ="R">조회수 : ${shop.productReview} <br></p>
									<button class="ReadMore" data-toggle="modal" data-target="#ReadMoreModal" value="${shop.productId}">Read More</button>
									<button><a href="${pageContext.request.contextPath}/shop/chat">chat</a></button>
								</div>
							</section>
						</c:forEach>
					</div>
				</c:forEach>
				</c:if>
			</div>
		</div>

		<!-- ReadMore  모달  -->
		<div class="modal fade" id="ReadMoreModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">마켓 상세 정보</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group" align="left">
							<table class="table table-striped">
								<tr>
									<th>상품 제목</th>
									<td class='modalHeader'></td>
								</tr>
								<tr>
									<th>가격</th>
									<td class='modalPrice'></td>
								</tr>
								<tr>
									<th>할인률</th>
									<td class='modalRate'></td>
								</tr>
								<tr>
									<th>판매자</th>
									<td class='modalNick'></td>
								</tr>
								<tr>
									<th>판매자 연락처</th>
									<td class='modalPhone'></td>
								</tr>
								<tr>
									<th>작성일시</th>
									<td class='modalTime'></td>
								</tr>
								<tr>
									<th>조회수</th>
									<td class='modalReview'></td>
								</tr>
								<tr>
									<th>예약여부</th>
									<td class='modalBook'></td>
								</tr>
								<tr>
									<th>작성내용</th>
									<td class='modalContent'></td>
								</tr>
							</table>
						</div>
						<button type="button" id="cancleBtn" class="btn btn-danger" data-dismiss="modal">확인</button>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>