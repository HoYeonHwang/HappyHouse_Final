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
        .bgi {
        background-image: url( "../images/12.jpg" );
        background-repeat : no-repeat;
		background-size : cover;
      }
    </style>
    <script type="text/javascript">
	$(document).ready(function() {
		$("#loginBtn").click(function() {
			if($("#userid").val() == "") {
				alert("아이디를 입력해주세요");
				return;
			} else if($("#userpwd").val() == "") {
				alert("비밀번호를 입력해주세요");
				return;
			} 
		});
	});
</script>
</head>
<body>
<div class="bgi">
<div class="wrapper" >
    <div class="wrapper style6" >
        <div class="col-lg-12" align="center">
            <div class="body">
                <h3>HappyHouse 로그인!</h3>
                <c:if test="${not empty errorMsg}">
                	<p class="error">${errorMsg}</p>
                </c:if>
                <form action="${pageContext.request.contextPath}/user/login" method="post">
                    <fieldset>
                        <div class="form-group" align="left">
                            <label for=ID style="display: block">ID:</label>
                            <input type="text" class="form-control" id="userid" name="userid" required>
                        </div>
                        <div class="form-group" align="left">
                            <label for="PW">Password:</label> 
                            <input type="password" class="form-control" id="userpwd" name="userpwd" required>
                        </div>
                        <div class="form-group form-check" align="right">
						    <label class="form-check-label">
						      <input class="form-check-input" type="checkbox" id="idsave" name="idsave" value="saveok"${idck}> 아이디저장 
						    </label>
						</div>
                        <div style="text-align: right; display: block">
                        	<input type="submit" id="loginBtn" class="btn btn-warning" value="로그인">
                        </div>
                        <div style="text-align: right; margin-top:5px; display: block">
                        	<a href="${pageContext.request.contextPath}/user/password"> 비밀번호를 잊으셨나요? </a>
                        </div>
                    </fieldset>
                </form>
            </div>
			</div>
        </div>
    </div>
</div>
</body>
</html>