<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.a {
	background-image: url( "../images/bg.jpg" );
	background-repeat: no-repeat;
	background-size: 2000px 2000px;
}
</style>
<script type="text/javascript">
	$(document)
		.ready(
			function() {
				$("#confirmBtn").click(
					function() {
					let insertinfo = JSON.stringify({
						"productHeader" : $('#ptitle').val(),
						"productContent" : $('#pcontent').val(),
						"productPrice" : $('#pprice').val(),
						"productRate" : $('#prate').val(),
						"productimg" : $('#pimg').val(),
					});
					$.ajax({
							url : '${pageContext.request.contextPath}/shop/shopProcess',
							method : 'POST',
							contentType : 'application/json;charset=utf-8',
							datatype : 'json',
							data : insertinfo,
							success : function(
									result) {
								if (result == 'success') {
									alert("등록 성공");
									location.href = "${pageContext.request.contextPath}/shop/shopMain";
								}
					},
						error : function(
								request,
								status, error) {
							alert("에러"
									+ "code:"
									+ request.status
									+ "\n"
									+ "message:"
									+ request.responseText
									+ "\n"
									+ "error:"
									+ error);
						}// error
					}); // ajax
		})
})
</script>
</head>
<body>
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="box">
				<div class="image fit">
					<img src="../images/board.png" alt="" />
				</div>
				<div class="content">
					<header class="align-center">
						<h2>Happy House-마켓</h2>
					</header>

					<div style="text-align: right;">
						<a href="${pageContext.request.contextPath}/shop/shopMain" style="margin-right: 1px;">
							<button class="button">마켓</button>
						</a>
					</div>
					<div class="form-group" align="left">
						<label for=title style="display: block">제목:</label>
						<input type="text" class="form-control" id="ptitle" name="ptitle" placeholder="제목을 입력하세요." required>
					</div>
					<div class="form-group" align="left">
						<label for=content style="display: block">내용:</label>
						<textarea class="form-control" id="pcontent" rows="15" cols="50" name="pcontent" placeholder="내용을 입력하세요."></textarea>
					</div>
					<div class="form-group" align="left">
						<label for=content style="display: block">원래가격:</label>
						<input type="text" class="form-control" id="pprice" name="pprice" placeholder="원래가격을 입력하세요." required>
					</div>
					<div class="form-group" align="left">
						<label for=content style="display: block">할인가격:</label>
						<input type="text" class="form-control" id="prate" name="prate" placeholder="할인가격을 입력하세요." required>
					</div>
					<div class="form-group" align="left">
						<label for=content style="display: block">이미지:</label>
						<input type="text" class="form-control" id="pimg" name="pimg" placeholder="이미지 입력하세요." required>
					</div>
					<div style="text-align: right; display: block">
						<input type="button" id="confirmBtn" class="btn btn-primary" value="마켓등록">
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>