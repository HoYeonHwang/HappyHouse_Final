<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/sections/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>APT 매매</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$("#DetailBtn").on( "click", function() {
	    $("#test_modal").modal();
	});
	</script>
<style>
.a {
	background-image: url( "../images/12.jpg" );
	background-repeat: no-repeat;
	background-size: cover;
}
.checkbox{
	background-color: white;
	align-items: center;
}
.commercial{
	color : red;
}
  #legend {
    font-family: Arial, sans-serif;
    background: #fff;
    padding: 10px;
    margin: 10px;
    border: 3px solid #000;
  }
</style>
</head>

<body>
	<script>
				let colorArr = ['table-primary','table-success','table-danger'];
				$(document).ready(function(){
					$.ajax({
						url:'${pageContext.request.contextPath}/house/sido',
						method : 'GET',
						datatype : 'text',
							success:function(result){
										$.each(result, function(index, vo) {
			 								$("#sido").append("<option value='"+vo.sido_code+"'>"+vo.sido_name+"</option>");
			 							});//each
									},//success
							error:function(request,status,error){
								console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							}// error
					}) 
					$("#sido").change(function() {
						$.ajax({
							url:'${pageContext.request.contextPath}/house/gugun',
							method : 'GET',
							datatype : 'text',
							data:{'sido':$("#sido").val()},
								success:function(result){
											$("#gugun").empty();
											$("#gugun").append('<option value="0">선택</option>');
											$.each(result, function(index, vo) {
												$("#gugun").append("<option value='"+vo.gugun_code+"'>"+vo.gugun_name+"</option>");
				 							});//each
										},//success
								error:function(request,status,error){
									console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}// error
						}) 
					});//change
					$("#gugun").change(function() {
						$.ajax({
							url:'${pageContext.request.contextPath}/house/dong',
							method : 'GET',
							datatype : 'text',
							data:{'gugun':$("#gugun").val()},
								success:function(result){
									$("#dong").empty();
									$("#dong").append('<option value="0">선택</option>');
											$.each(result, function(index, vo) {
												$("#dong").append("<option value='"+vo.dong+"'>"+vo.dong+"</option>");
				 							});//each
										},//success
								error:function(request,status,error){
									console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}// error
						}) 
					});//change
					$("#confirmBtn").click(function() {
						$.ajax({
							url:'${pageContext.request.contextPath}/house/apt',
							method : 'GET',
							datatype : 'text',
							data:{'dong':$("#dong").val()},
								success:function(result){
									initApt();
									$("#searchResult").empty();
											$.each(result, function(index, vo) {
												let str = "<tr class="+colorArr[index%3]+">"
												+ "<td>" + vo.no + "</td>"
												+ "<td>" + vo.dong + "</td>"
												+ "<td>" + vo.aptName + "</td>"
												+ "<td>" + vo.jibun + "</td>"
												+ "<td>" + vo.code
												+ "</td><td id='lat_"+index+"'></td><td id='lng_"+index+"'></td></tr>";
												$("#searchResult").append(str);
				 							});//each
											geocode(result);
										},//success
								error:function(request,status,error){
									console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}// error
						}) 
					});//change
					$("#commercialCheck").change(function() {
						if($("#commercialCheck").is(":checked")){
							$.ajax({
								url:'${pageContext.request.contextPath}/apitest',
								method : 'GET',
								datatype : 'text',
								data:{'dong':$("#dong").val()},
								success:function(result){
									$.each(result, function(index, vo){
										let tmplat = vo.lat;
										let tmplng = vo.lon;
										let title = vo.bizesNm;
										let indsLclsCd = vo.indsLclsCd; // 상권업종대분류코드
										let indsSclsNm = vo.indsSclsNm; // 상권업종소분류명
										let address = vo.rdnmAdr;
										addCommercialMarker(tmplat, tmplng, title, indsLclsCd, indsSclsNm, address);
									});
								},//success
								error:function(request,status,error){
									console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}// error
							}) 
						}
						else{
// 							initMap();
							clear();
						}
					});//change
				});//ready
				
				$(document).ready(function(){
					$("#SearchBtn").click(function(){
					if($("#search").val()){
					if($("#villa").val()){
						var v = $("#villa").val();
						if(v=="Apt"){
							$.ajax({
								url:'${pageContext.request.contextPath}/house/get',
								data:{'search':$("#search").val()},
								method : 'GET',
								datatype : 'text',
									success:function(result){
												$("#searchResult").empty();
												console.log(result);
												$.each(result, function(index, vo) {
													let str = "<tr class="+colorArr[index%3]+">"
													+ "<td>" + vo.no + "</td>"
													+ "<td>" + vo.dong + "</td>"
													+ "<td>" + vo.aptName + "</td>"
													+ "<td>" + vo.jibun + "</td>"
													+ "<td>" + vo.code
													+ "</td><td id='lat_"+index+"'></td><td id='lng_"+index+"'></td></tr>";
													$("#searchResult").append(str);
												});//each
												geocode(result);
											},//success
									error:function(request,status,error){
										console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
									}// error
							}) // ajax
						}
						else if(v=="villa"){
							$.get("${pageContext.request.contextPath}/map"
									,{act:"villaSearch", search:$("#search").val()}
									,function(data, status){
										$("#searchResult").empty();
										$.each(data, function(index, vo) {
											let str = "<tr class="+colorArr[index%3]+">"
											+ "<td>" + vo.no + "</td>"
											+ "<td>" + vo.dong + "</td>"
											+ "<td>" + vo.aptName + "</td>"
											+ "<td>" + vo.jibun + "</td>"
											+ "<td>" + vo.code
											+ "</td><td id='lat_"+index+"'></td><td id='lng_"+index+"'></td></tr>";
											$("#searchResult").append(str);
										});//each
										geocode(data);
									}//function
									, "json"
							);//get
						}
						
					}else {
						alert("주거 형태를 선택해주세요");
						return false;
					}
					}else {
						alert("검색어를 입력해주세요");
						return false;
					}
					});
				});//ready
				
				
				function geocode(jsonData) {
					let idx = 0;
					$.each(jsonData, function(index, vo) {
						let tmpLat;
						let tmpLng;
						$.get("https://maps.googleapis.com/maps/api/geocode/json"
								,{	key:'AIzaSyDLCDvitEVxXP248HqlNI9UwV7hnZH_afQ'
									, address:vo.dong+"+"+vo.aptName+"+"+vo.jibun
								}
								, function(data, status) {
									tmpLat = data.results[0].geometry.location.lat;
									tmpLng = data.results[0].geometry.location.lng;
									$("#lat_"+index).text(tmpLat);
									$("#lng_"+index).text(tmpLng);
									addMarker(tmpLat, tmpLng, vo.aptName);
								}
								, "json"
						);//get
					});//each
				};
				</script>
	<div class="a">
		<section id="banner">
			<div class="inner">
				<h1>당신의 집 뿐만아니라,</h1>
				<br>
				<h1>당신의 생활을 삽니다.</h1>
				<p>SSAFY - HappyHouse 프로젝트</p>
			</div>
		</section>
		<section id="one" class="wrapper style2">
			<div class="inner">
				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/4.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<h2>어떤 동네</h2>
								<h2>어떤 방에서</h2>
								<h2>살고 싶으신가요?</h2>
							</header>
							<hr />
							<input type="text" id="search" name="search">
							<select id="villa">
								<option value="">선택</option>
								<option value="Apt">아파트</option>
								<option value="villa">단독주택</option>
							</select>
							<input type="button" id="SearchBtn" value="방 찾기">
							<input type="button" id="DetailBtn" value="상세 검색" data-toggle="modal" data-target="#detailModal">
							<input type="hidden" id="action" name="action" value="search"></input>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="two" class="wrapper style2">
			<div class="inner">
				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/4.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<h2>동네를</h2>
								<h2>자세히 알고 싶으신가요?</h2>
							</header>
							<hr />
							<form id="confirmform" method="post" action="">
								<div class="form-group" align="left">
									<table class="table table-striped">
										<tr>
											<td>지역</td>
											<td>
												시도 :
												<select id="sido">
													<option value="0">선택</option>
												</select>
												구군 :
												<select id="gugun">
													<option value="0">선택</option>
												</select>
												읍면동 :
												<select id="dong">
													<option value="0">선택</option>
												</select>
											</td>
										</tr>
									</table>
								</div>
								<button type="button" id="confirmBtn" class="btn btn-primary" data-dismiss="modal">검색</button>
								<button type="button" id="cancleBtn" class="btn btn-danger" data-dismiss="modal">취소</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="" class="wrapper style2">
			<table class="table mt-2">
				<thead>
					<tr>
						<th>번호</th>
						<th>법정동</th>
						<th>아파트이름</th>
						<th>지번</th>
						<th>지역코드</th>
						<th>위도</th>
						<th>경도</th>
					</tr>
				</thead>
				<tbody id="searchResult">
				</tbody>
			</table>
		</section>
		<section class="wrapper style2">
			<div class="" align="center">
				<input class="" type="checkbox" id="commercialCheck" value="주변상가">주변시설
			</div>
			<div id="map" style="width: 80%; height: 500px; margin: auto;"></div>
			<div id="legend"></div> 
		</section>
		<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
		<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLCDvitEVxXP248HqlNI9UwV7hnZH_afQ&callback=initMap"></script>
		<script>
			var markersArray = [];
			var aptMarkersArray = [];
			var multi = {
				lat : 37.5665734,
				lng : 126.978179
			};
			var map;
			const icons = {
				Q: {
					icon: "../images/marker/food.png",
					name: "음식점"
				},
// 				N: {
// 					icon: "../images/marker/entertainment.png",
// 					name: "여가/오락"
// 				},
				D: {
					icon: "../images/marker/shopping.png",
					name: "소매"
				},
				G: {
					icon: "../images/marker/transport.png",
					name: "교통"
				},
				F: {
					icon: "../images/marker/local-services.png",
					name: "생활서비스"
				},
// 				R: {
// 					icon: "../images/marker/education.png",
// 					name: "교육"
// 				},
				L: {
					icon: "../images/marker/real-estate.png",
					name: "부동산"
				},
				APT: {
					icon: "../images/marker/residential-places.png",
					name: "아파트"
				},
			};
			function initMap() {
				map = new google.maps.Map(document.getElementById('map'), {
					center : multi,
					zoom : 12
				});
// 				var marker = new google.maps.Marker({
// 					position : multi,
// 					map : map
// 				});
				const legend = document.getElementById("legend");
				for (const key in icons) {
					const type = icons[key];
					const name = type.name;
					const icon = type.icon;
					const div = document.createElement("div");
					div.innerHTML = '<img src="' + icon + '"> ' + name;
					legend.appendChild(div);
				}
				map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(legend);
			}
			function addMarker(tmpLat, tmpLng, aptName) {
				var marker = new google.maps.Marker({
					position : new google.maps.LatLng(parseFloat(tmpLat),
							parseFloat(tmpLng)),
// 					label : aptName,
// 					title : aptName,
					icon : "../images/marker/residential-places.png"
				});
				const infowindow = new google.maps.InfoWindow({
					content : "<div style=\"text-align:center;\"><strong>"+aptName+"</strong><br>" +
// 							  "상권업종분류 : " + indsSclsNm +
// 							  "<br>도로명주소 : " + address +
							  "</div>"
				});
				map.setZoom(15);
				map.setCenter(marker.getPosition());
				marker.addListener('click', function() {
					map.setZoom(15);
					map.setCenter(marker.getPosition());
					infowindow.open(map, marker);
				});
				marker.setMap(map);
				aptMarkersArray.push(marker);
			}
			function addCommercialMarker(tmpLat, tmpLng, bizesNm, indsLclsCd, indsSclsNm, address) {
				var marker = new google.maps.Marker({
					position : new google.maps.LatLng(parseFloat(tmpLat),
							parseFloat(tmpLng)),
					icon : icons[indsLclsCd].icon,
// 					label : bizesNm,
// 					title : bizesNm
				});
				map.setZoom(15);
				map.setCenter(marker.getPosition());
				const infowindow = new google.maps.InfoWindow({
					content : "<div style=\"text-align:center;\"><strong>"+bizesNm+"</strong><br>" +
							  "상권업종분류 : " + indsSclsNm +
							  "<br>도로명주소 : " + address +
							  "</div>"
				});
				marker.addListener('click', function() {
					map.setZoom(15);
					map.setCenter(marker.getPosition());
					infowindow.open(map, marker);
				});
				marker.setMap(map);
				if(indsLclsCd != "apt"){
					markersArray.push(marker);
				}
			}
			function clear(){
				for (var i = 0; i < markersArray.length; i++ ) {
					markersArray[i].setMap(null);
				}
			}
			function initApt(){
				clear();
				for (var i = 0; i < aptMarkersArray.length; i++ ) {
					aptMarkersArray[i].setMap(null);
				}
			}
		</script>
	</div>
</body>
</html>