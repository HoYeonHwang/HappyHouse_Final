<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file ="/WEB-INF/views/sections/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 읽기</title>
<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#confirmBtn").click(function(){
			let modifyinfo = JSON.stringify({
				"bnum":'${board.bnum}',
				"bwriter":'${board.bwriter}',
				"btitle":$('#btitle').val(),
				"bcontent":$('#bcontent').val(),
				"bread_cnt":'${board.bread_cnt}'
			});
				$.ajax({
						url:'${pageContext.request.contextPath}/board/boardProcess',
						method : 'PUT',
						contentType:'application/json;charset=utf-8',
						datatype : 'json',
						data : modifyinfo,
							success:function(result){
								if(result=='success'){
									alert("수정 성공");
									location.href = "${pageContext.request.contextPath}/board/boardMain";
								}
							},
							error:function(request,status,error){
								alert("에러"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							}// error
					}); // ajax
		})
		$("#delete").click(function(){
			$.ajax({
					url:'${pageContext.request.contextPath}/board/boardProcess/${board.bnum}',
					method : 'DELETE',
					datatype : 'text',
						success:function(result){
							if(result=='success'){
								alert("삭제 성공");
								location.href = "${pageContext.request.contextPath}/board/boardMain";
							}
						},
						error:function(request,status,error){
							alert("에러"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}// error
				}) // ajax
	})
	})
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
		.main_context{
			position:relative;
			text-align : center;
			top:-250px;
			z-index: 0;
		}
		#index_h2{
			color : white;
			position: relative;
		}
		#index_p{
			color:white;
			position:relative;
		}
		#main_img{
			width:100%;
			height:400px;
			z-index : -1;
			opacity: 0.8;
			position:relative;
		}
		#btn_sitemap{
			position:relative;
		}
		#notice_title{
			background-color: grey;
		}
	</style>
</head>
<body>
	<div class="container">
		<header id="index_header" class="jumbotron text-center mb-1"></header>
		<table border="1" class="table table-hover" style="margin-top:10px;">
			<tr id="notice_title">
				<th colspan="5" style="color:white;">공지사항</th>
			</tr>
				<tr>
					<th>글번호</th>
					<td>${board.bnum}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${board.bwriter}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${board.btitle}</td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td>${board.bwritedate}</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${board.bread_cnt}</td>
				</tr>
				<tr>
					<th>작성내용</th>
					<td>${board.bcontent}</td>
				</tr>
		</table>
		<div style="text-align:right;">
                <button id = "update" class="btn btn-warning" data-toggle="modal" data-target="#updateModal">수정</button>
                <button id = "delete" class="btn btn-danger">삭제</button>
		</div>
		
		<!-- 수정부분  모달  -->
		<div class="modal fade" id="updateModal" role="dialog">
						<div class="modal-dialog modal-lg">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">공지사항 수정</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<form id="confirmform" method="post" action="">
										<div class="form-group" align="left">
											<table class="table table-striped">
												<tr>
													<th>글번호</th>
													<td id = "bnum">${board.bnum}</td>
												</tr>
												<tr>
													<th>작성자</th>
													<td>${board.bwriter}</td>
												</tr>
												<tr>
													<th>제목</th>
													<td><input type="text" class="form-control" id="btitle" name="btitle" value="${board.btitle}">
													</td>
												</tr>
												<tr>
													<th>작성일시</th>
													<td>${board.bwritedate}</td>
												</tr>
												<tr>
													<th>조회수</th>
													<td>${board.bread_cnt}</td>
												</tr>
												<tr>
													<th>작성내용</th>
													<td><input type="text" class="form-control" id="bcontent" name="bcontent" value="${board.bcontent}">
													</td>
												</tr>
											</table>
										</div>
										<button type="button" id="confirmBtn" class="btn btn-primary"
											data-dismiss="modal">수정</button>
										<button type="button" id="cancleBtn" class="btn btn-danger"
											data-dismiss="modal">취소</button>
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 수정부분  모달 끝  -->
		<div style="text-align:right;">
			<a href="${pageContext.request.contextPath}/board/boardMain" style="margin-right:20px;">목록으로</a>
		</div>
	</div>
</body>
</html>