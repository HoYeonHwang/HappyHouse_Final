<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="/WEB-INF/views/sections/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Happy House</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script type="text/javascript">
    
	$(document).ready(function() {
		$("#updateBtn").click(function() {
			$("#userpwd").attr('disabled', false);
			$("#email").attr('disabled', false);
			$("#address").attr('disabled', false);
			$("#update").show();
			$("#updateBtn").hide();
		});
		$("#update").click(function() {
			$.ajax({
				url : "update",
				data : {'userid':'${myinfo.userid}', 'userpwd':$("#userpwd").val(), 'email':$("#email").val(), 'address':$("#address").val()},
				method : "POST",
				success : function() {
					console.log('success');
					location.reload();
				},
				error : function() {
					console.log('error');
				}
			});
		});
			
	});
    </script>
        <style>
      
    </style>
</head>
<body>
<div class="container" align="center">
	<div class="col-lg-6" align="center">
			<div class="form-group" align="left">
				<label for="name">이름</label>
				<input type="text" class="form-control" id="username" name="username" value="${myinfo.username}" disabled>
			</div>
			<div class="form-group" align="left">
				<label for="">아이디</label>
				<input type="text" class="form-control" id="userid" name="userid" value="${myinfo.userid}" disabled>
			</div>
			<div class="form-group" align="left">
				<label for="">비밀번호</label>
				<input type="password" class="form-control" id="userpwd" name="userpwd" placeholder="${myinfo.userpwd}" disabled>
			</div>
			<div class="form-group" align="left">
				<label for="">이메일</label>
				<input type="text" class="form-control" id="email" name="email" placeholder="${myinfo.email}" disabled>
			</div>
			<div class="form-group" align="left">
				<label for="">주소</label>
				<input type="text" class="form-control" id="address" name="address" placeholder="${myinfo.address}" disabled>
			</div>
			<div class="form-group" align="left">
				<label for="">가입날짜</label>
				<input type="text" class="form-control" id="joindate" name="joindate" value="${myinfo.joindate}" disabled>
			</div>
			<div class="form-group" align="center">
		        <a href="${pageContext.request.contextPath}/user/delete?userid=${myinfo.userid}">
					<button class="btn btn-warning">회원탈퇴</button>
		        </a>
				<button type="button" class="btn btn-primary" id="updateBtn">수정</button>
				<input type="button" class="btn btn-primary" id="update" value="수정완료" style="display: none">
			</div>
	</div>
</div>
</body>
</html>