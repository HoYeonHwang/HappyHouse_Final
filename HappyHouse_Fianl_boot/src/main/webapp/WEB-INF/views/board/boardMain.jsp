<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file ="/WEB-INF/views/sections/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HappyHouse-게시판</title>
	<link rel="shortcut icon" href="img/favicon.ico">
</head>
<style>
	.a {
        background-image: url( "../images/6.jpg" );
        background-repeat : no-repeat;
		background-size : cover;
      }
</style>
<body>
<div class="a">
	<div class="container">
		<header id="index_header" class="jumbotron text-center mb-1"></header>
		<!-- notice list start -->
		<div style="text-align:right;">
			<a href="${pageContext.request.contextPath}/board/boardWrite" style="margin-right:1px;"><button class="btn btn-primary">글작성</button></a>
		</div>
		<table border="1" class="table table-hover" style="margin-top:10px;">
			<tr id="notice_title">
				<th colspan="5" style="color:white;">공지사항</th>
				
			</tr>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일시</th>
				<th>조회수</th>
			</tr>
			<c:choose>
				<c:when test="${empty plist or empty plist.noticeList}">
					<tr><td colspan="5">작성된 게시글이 없습니다.</td></tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${plist.noticeList}" var="plist">
						<tr>
							<td>${plist.bnum}</td>
							<td><a href="${pageContext.request.contextPath}/board/boardRead?bnum=${plist.bnum}">${plist.btitle}</a></td>
							<td>${plist.bwriter}</td>
							<td>${plist.bwritedate}</td>
							<td>${plist.bread_cnt}</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5">
							<c:if test="${plist.startPage>1}">
								<a href="${pageContext.request.contextPath}/board/boardMain?page=${plist.startPage-1}">이전</a>
							</c:if>
							<c:forEach begin="${plist.startPage}" end="${plist.endPage}" var="i">
								
								<a href="${pageContext.request.contextPath}/board/boardMain?page=${i}">
								<c:if test="${i eq plist.curPage}"><b>[${i}]</b></c:if>
								<c:if test="${i ne plist.curPage}">[${i}]</c:if>
								</a>
							</c:forEach>
							
							<c:if test="${plist.endPage < plist.totalPage}">
								<a href="${pageContext.request.contextPath}/board/boardMain?page=${plist.endPage+1}">다음</a>
							</c:if>
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
</div>
</div>
</body>
</html>