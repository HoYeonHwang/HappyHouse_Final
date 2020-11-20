<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="/WEB-INF/views/sections/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>findPassword</title>
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
    <script type="text/javascript">
	$(document).ready(function() {
		$("#findBtn").click(function() {
			if($("#userid").val() == "") {
				alert("비밀번호를 찾고자 하는 아이디를 입력해 주세요.");
				return;
			}
		});
	});
</script>
</head>
<body>
<div class="wrapper">
    <div class="container" align="center">
        <div class="col-lg-6" align="center">
            <div class="body">
                <h3>HappyHouse 비밀번호찾기!</h3>
                <c:if test="${not empty errorMsg}">
                	<p class="error">${errorMsg}</p>
                </c:if>
                <c:if test="${not empty userpwd }">
                	<c:if test="${userpwd eq 'notExsit'}">
                		<script type="text/javascript">
                			alert("없는 아이디입니다.");
                		</script>
                	</c:if>
                	<c:if test="${userpwd ne 'notExsit'}">
	                	<script type="text/javascript">
	                		alert("비밀번호는'${userpwd}'입니다.");
	                	</script>
                	</c:if>
                </c:if>
					<form action="${pageContext.request.contextPath}/user/findpassword" method="post">
						<div class="form-group" align="left">
							<label for=ID style="display: block">ID:</label> 
							<input type="text" class="form-control" id="userid" name="userid" required>
						</div>
						<div style="text-align: right; display: block">
							<input type="submit" id="findBtn" class="btn btn-warning" value="비밀번호찾기">
						</div>
						<div style="text-align: right; margin-top: 5px; display: block">
							<a href="${pageContext.request.contextPath}/user/login"> 로그인 하러가기! </a>
						</div>
					</form>
				</div>

        </div>
    </div>
</div>
</body>
</html>