<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>명월-명지월드의 모든 것</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<!-- slick css -->
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous" ></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script type="text/javascript">
	function searchBtn(f) {
		f.action = "search.do";
		f.submit();
	}
	function category_eat() {
		location.href = "category_eat.do";	
	}
	function category_drink() {
		location.href = "category_drink.do";	
	}
	function category_play() {
		location.href = "category_play.do";	
	}
</script>
</head>

<body>
	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="wrap-all">
		<div class="banner_container">
			<div class="main_banner">
				<div><img src="/resources/images/banner01.png"></div>
				<div><img src="/resources/images/banner02.png"></div>
				<div><img src="/resources/images/banner03.png"></div>
			</div>
		</div> <!-- banner_container 끝 -->
		
		<!-- slick 라이브러리 설정 -->
		<script type="text/javascript">
			$(document).ready(function() {
				$('.main_banner').slick({
					autoplay : true,
					arrows : false,
					dots : true,
					appendDots : $('banner_container'),
					speed : 900, 			/* 이미지 슬라이딩 시 걸리는 시간 */
					infinite : true,
					autoplaySpeed : 4000, 	/* 다른 이미지로 넘어 갈 때 걸리는 시간 */
					slidesToShow : 1,
					slidesToScroll : 1,
					draggable: true,
					fade : false
				});
			});
		</script> <!-- slick 라이브러리 설정 끝 -->
		
<!-- 검색창 이벤트 처리 -->
<!-- <script type="text/javascript">
	$(function() {
		$("#search_bar").click(function() {
			$("#pop").show(0);
		});
		$("#search_bar").mouseleave(function() {
			$("#pop").hide(0);
		});
	});
</script> -->
		<form>
			<div id="search_bar" class="search-bar">
				<p><input type="text" name="keyWord" placeholder="검색어를 입력하세요."></p>
				<input type="image" src="/resources/images/search_icon.svg" alt="search" onclick="searchBtn(this.form)">
			</div>
<!--	
		<div id="pop" class="search-bar-click" style="display: none;">
				<div class="prev-search">
					<h5>검색 기록</h5>
					<p>검색어1</p>
					<p>검색어2</p>
					<p>검색어3</p>
				</div>
				<div class="want-search">
					<h5>추천 검색어</h5>
					<p>검색어1</p>
					<p>검색어2</p>
					<p>검색어3</p>
				</div>
			</div> 
-->		
		</form>
		
		<div class="category">
			<div onclick="category_eat()">먹거리</div>
			<div onclick="category_drink()">마실거리</div>
			<div onclick="category_play()">놀거리</div>
		</div>
		
		<!-- Session 이 유지되는 동안 조회한 가게 리스트 출력 -->
		<c:choose>
			<c:when test="${empty thisTimeView}">
				<div class="story">
					<h3> 추천 리스트 </h3>
				</div>
				<div class="cardview">
					<div class="card" onclick="location.href='store_detail.do?store_idx=${k.store_idx}'">
						<img alt="shop" src="/resources/images/shop.png">
						<div class="text_container">
							<h4><b>가게이름</b></h4>
							<p>#tag1 #tag2</p>
							<div class="shop_info">
								<img alt="like" src="/resources/images/like.svg">
								<h5>132</h5>
								<img alt="like" src="/resources/images/write.svg">
								<h5>27</h5>
								<img alt="like" src="/resources/images/watch.svg">
								<h5>1,054</h5>
							</div> <!-- shop_info -->
						</div> <!-- text-container -->
					</div> <!-- card -->
					<div class="card" onclick="location.href='store_detail.do?store_idx=${k.store_idx}'">
						<img alt="shop" src="/resources/images/shop.png">
						<div class="text_container">
							<h4><b>가게이름</b></h4>
							<p>#tag1 #tag2</p>
							<div class="shop_info">
								<img alt="like" src="/resources/images/like.svg">
								<h5>132</h5>
								<img alt="like" src="/resources/images/write.svg">
								<h5>27</h5>
								<img alt="like" src="/resources/images/watch.svg">
								<h5>1,054</h5>
							</div> <!-- shop_info -->
						</div> <!-- text-container -->
					</div> <!-- card -->
				</div> <!-- cardview -->
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${thisTimeView}">
					<div class="story">
						<h3> 최근 본 가게 </h3>
					</div>
					<div class="cardview">
						<div class="card" onclick="location.href='store_detail.do?store_idx=${k.store_idx}'">
							<img alt="shop" src="/resources/images/${k.store_img}">
							<div class="text_container">
								<h4><b>${k.store_name}</b></h4>
								<p>${k.store_sub}</p>
								<div class="shop_info">
									<img alt="like" src="/resources/images/like.svg">
									<h5>${k.store_like}</h5>
									<img alt="like" src="/resources/images/write.svg">
									<h5>${k.store_comment}</h5>
									<img alt="like" src="/resources/images/watch.svg">
									<h5>${k.store_view}</h5>
								</div> <!-- shop_info -->
							</div> <!-- text-container -->
						</div> <!-- card -->
					</div> <!-- cardview -->
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>	<!-- wrap-all 클래스 끝 -->
</body>
</html>