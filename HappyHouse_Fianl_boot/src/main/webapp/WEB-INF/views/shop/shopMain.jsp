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
 <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
.a {
	background-image: url( "../images/bg.jpg" );
	background-repeat: no-repeat;
	background-size: 2000px 2000px;
}
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
				<h1>이사에 도움이 되는</h1>
				<br>
				<h1>상품들을 소개해드릴게요</h1>
				<p>같은 동네의 주민들이 팔고있는 상품들을 소개시켜 드립니다.</p>
				<br>
				<br>
				<form action="${pageContext.request.contextPath}/shop/shopSearch" method="post">
					<input type="text" id="search" name="search">
					<br>
					<input type="submit" id="SearchBtn" value="키워드">
				</form>
			</div>
		</section>
		<!-- Extra -->
		<div style="text-align: right;">
						<a href="${pageContext.request.contextPath}/shop/shopWrite" style="margin-right: 1px;">
							<button class="button">글작성</button>
						</a>
					</div>
		<div id="extra">
			<div class="container">
				<c:forEach begin="0" end="${listcount-1}" step="3" varStatus="vs">
					<div class="row no-collapse-1">
						<c:forEach items="${shoplist}" var="shop" begin="${vs.index}" end="${vs.index+2}" varStatus="count">
							<section class="4u">
								<a href="${shop.productimg}" class="image featured">
									<img src="../images/temp.jpg" alt="">
								</a>
								<div class="box">
									<p>${shop.productHeader}
										<br>
									</p>
									<p>${shop.productPrice}
										-> ${shop.productRate}<br>
										<br> ${shop.productReview} <br>
									</p>
									<button class ="ReadMore" data-toggle="modal" data-target="#ReadMoreModal" value="${shop.productId}">
									Read More</button>
								</div>
							</section>
						</c:forEach>
					</div>
				</c:forEach>
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
									<c:forEach items="${shoplist}" var="plist" >
									<c:if test="${plist.productId eq "${.ReadMore.val() }">
										<tr>
											<th>상품 제목</th>
											<td>${plist.productHeader}</td>
										</tr>
										<tr>
											<th>가격</th>
											<td>${plist.productPrice}</td>
										</tr>
										<tr>
											<th>할인률</th>
											<td>
												${plist.productRate}
											</td>
										</tr>
										<tr>
											<th>판매자</th>
											<td>${plist.productNick}</td>
										</tr>
										<tr>
											<th>판매자 연락처</th>
											<td>${plist.productPhone}</td>
										</tr>
										<tr>
											<th>작성일시</th>
											<td>${plist.productTime}</td>
										</tr>
										<tr>
											<th>조회수</th>
											<td>${plist.productReview}</td>
										</tr>
										<tr>
											<th>예약여부</th>
											<td>${plist.productBook}</td>
										</tr>
										<tr>
											<th>사진</th>
											<td>${plist.productimg}</td>
										</tr>
										<tr>
											<th>작성내용</th>
											<td>
												<input type="text" class="form-control" id="bcontent" name="bcontent" value="${plist.productContent}">
											</td>
										</tr>
										</c:if>
										</c:forEach>
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