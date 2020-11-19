<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@include file ="/WEB-INF/views/sections/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member 화면</title>
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
	<div class="wrapper">
		<h1>Notice</h1>
		<form action="${pageContext.request.contextPath}/board/boardProcess" method="post">
				<div class="form-group" align="left">
                       <label for=title style="display: block">제목:</label>
                       <input type="text" class="form-control" id="btitle" name="btitle"  placeholder="제목을 입력하세요." required>
				</div>
				<div class="form-group" align="left">
                       <label for=content style="display: block">내용:</label>
                       <textarea class="form-control" id="bcontent" rows="15" cols="50" name="bcontent" placeholder="내용을 입력하세요."></textarea>
				</div>
                <div style="text-align: right; display: block">
             		<input type="submit" class="btn btn-primary" value="작성완료">
             	</div>
		</form>
	</div>
</body>
</html>