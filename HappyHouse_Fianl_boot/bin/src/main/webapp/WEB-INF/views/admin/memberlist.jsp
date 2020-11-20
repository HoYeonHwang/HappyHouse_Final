<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="/WEB-INF/views/sections/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Happy House</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/favicon.ico">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    </script>
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
        
        .error {
        	color: red;
        }
    </style>
</head>
<body>
<div class="container" align="center">
	<div class="col-lg-8" align="center">
		<c:if test="${empty memberlist}">
			<h2>등록된 회원이 없습니다.</h2>
		</c:if>
		<c:if test="${not empty memberlist}">
			<table class="table table-active">
				<tr class="table-info">
					<th align="center">이름</th>
					<th align="center">아이디</th>
					<th align="center">이메일</th>
					<th align="center">주소</th>
					<th align="center">가입일자</th>
				</tr>
				<c:forEach items="${memberlist}" var="member">
					<tr>
						<td>${member.username}</td>
						<td>${member.userid}</td>
						<td>${member.email}</td>
						<td>${member.address}</td>
						<td>${member.joindate}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</div>
</body>
</html>