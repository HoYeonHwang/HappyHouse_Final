<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- nav bar start -->
	<nav class="navbar navbar-light bg-dark">
    <a href="${pageContext.request.contextPath}/" class="navbar-brand"><h2>Happy House</h2></a>
    <div class="form-inline">
        <c:if test="${empty userinfo}">
            <a href="${pageContext.request.contextPath}/user/register">
                <button class="btn btn-warning">회원가입</button>
            </a>
            <a href="${pageContext.request.contextPath}/user/login">
                <button class="btn btn-primary">로그인</button>
            </a>
        </c:if>
        <c:if test="${not empty userinfo}">
            <c:if test="${logininfo eq 'admin'}">
                    <a href="${pageContext.request.contextPath}/admin/list">
                    <button class="btn btn-danger">관리자</button>
                </a>
                <a href="${pageContext.request.contextPath}/user/info?userid=${userinfo.userid}">
                    <button class="btn btn-primary">내정보</button>
                </a>
            </c:if>
            <c:if test="${logininfo ne 'admin'}">
                <a href="${pageContext.request.contextPath}/user/info?userid=${userinfo.userid}">
                    <button class="btn btn-primary">내정보</button>
                </a>
            </c:if>
            <a href="${pageContext.request.contextPath}/user/logout">
                <button class="btn btn-primary">로그아웃</button>
            </a>
        </c:if>
    </div>
</nav>
<!--  nav bar end -->
</body>
</html>