<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.a {
	background-image: url( "../images/6.jpg" );
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#confirmBtn").click(function(){
		let insertinfo = JSON.stringify({
			"btitle":$('#btitle').val(),
			"bcontent":$('#bcontent').val(),
		});
			$.ajax({
					url:'${pageContext.request.contextPath}/board/boardProcess',
					method : 'POST',
					contentType:'application/json;charset=utf-8',
					datatype : 'json',
					data : insertinfo,
						success:function(result){
							if(result=='success'){
								alert("등록 성공");
								location.href = "${pageContext.request.contextPath}/board/boardMain";
							}
						},
						error:function(request,status,error){
							alert("에러"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
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
						<h2>Happy House 게시판</h2>
					</header>

					<div style="text-align: right;">
						<a href="${pageContext.request.contextPath}/board/boardMain" style="margin-right: 1px;">
							<button class="button">게시판</button>
						</a>
					</div>

					<div class="form-group" align="left">
						<label for=title style="display: block">제목:</label>
						<input type="text" class="form-control" id="btitle" name="btitle" placeholder="제목을 입력하세요." required>
					</div>
					<div class="form-group" align="left">
						<label for=content style="display: block">내용:</label>
						<textarea class="form-control" id="bcontent" rows="15" cols="50" name="bcontent" placeholder="내용을 입력하세요."></textarea>
					</div>
					<div style="text-align: right; display: block">
						<input type="button" id="confirmBtn" class="btn btn-primary" value="작성완료">
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>