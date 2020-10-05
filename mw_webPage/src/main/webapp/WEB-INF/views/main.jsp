<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script type="text/javascript">
	function category_eat() {
		location.href = "category_eat.do";	
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
		</div>
		
		<!-- slick js -->
		<script type="text/javascript">
			$(document).ready(function() {
				$('.main_banner').slick({
					autoplay : true,
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
		</script>
		
		<!-- 카테고리별 클릭 시 해당 카테고리의 파라미터 값 포함시켜 이동 -->
		<div class="category">
			<div onclick="category_eat()">먹거리</div>
			<div onclick="category_drink()">마실거리</div>
			<div onclick="category_play()">놀거리</div>
		</div>
		
		<!-- 검색창 클릭 시 배경 검게, 추천검색어/검색기록 뜨게 수정 필요 -->
		<div class="search-bar">
			<input type="text" name="search" placeholder="검색어를 입력하세요."> 
			<a href="search.do"><img alt="search" src="/resources/images/search_icon.svg"></a>
		</div>
		
		<div class="story">
			<h3> 최근 본 가게 </h3>
		</div>
		
		<!-- DB 생성 후 jstl 적용 필요 -->
		<div class="cardview">
		<%-- <c:forEach var="k" item="${}" > --%>
			<div class="card">
				<img alt="shop" src="/resources/images/shop.png">
				<div class="text_container">
					<h4><b>NAME</b></h4>
					<p>#tag1 #tag2</p>
					<div class="shop_info">
						<img alt="like" src="/resources/images/like.svg">
						<h5>1,023</h5>
						<img alt="like" src="/resources/images/write.svg">
						<h5>64</h5>
						<img alt="like" src="/resources/images/watch.svg">
						<h5>39,806</h5>
					</div>
				</div>
			</div>
			<div class="card">
				<img alt="shop" src="/resources/images/shop.png">
				<div class="text_container">
					<h4><b>NAME</b></h4>
					<p>#tag1 #tag2</p>
					<div class="shop_info">
						<img alt="like" src="/resources/images/like.svg">
						<h5>1,023</h5>
						<img alt="like" src="/resources/images/write.svg">
						<h5>64</h5>
						<img alt="like" src="/resources/images/watch.svg">
						<h5>39,806</h5>
					</div>
				</div>
			</div>
			<div class="card">
				<img alt="shop" src="/resources/images/shop.png">
				<div class="text_container">
					<h4><b>NAME</b></h4>
					<p>#tag1 #tag2</p>
					<div class="shop_info">
						<img alt="like" src="/resources/images/like.svg">
						<h5>1,023</h5>
						<img alt="like" src="/resources/images/write.svg">
						<h5>64</h5>
						<img alt="like" src="/resources/images/watch.svg">
						<h5>39,806</h5>
					</div>
				</div>
			</div>
			<div class="card">
				<img alt="shop" src="/resources/images/shop.png">
				<div class="text_container">
					<h4><b>NAME</b></h4>
					<p>#tag1 #tag2</p>
					<div class="shop_info">
						<img alt="like" src="/resources/images/like.svg">
						<h5>1,023</h5>
						<img alt="like" src="/resources/images/write.svg">
						<h5>64</h5>
						<img alt="like" src="/resources/images/watch.svg">
						<h5>39,806</h5>
					</div>
				</div>
			</div>
			<div class="card">
				<img alt="shop" src="/resources/images/shop.png">
				<div class="text_container">
					<h4><b>NAME</b></h4>
					<p>#tag1 #tag2</p>
					<div class="shop_info">
						<img alt="like" src="/resources/images/like.svg">
						<h5>1,023</h5>
						<img alt="like" src="/resources/images/write.svg">
						<h5>64</h5>
						<img alt="like" src="/resources/images/watch.svg">
						<h5>39,806</h5>
					</div>
				</div>
			</div>
		<%-- </c:forEach> --%>
		</div>
	</div>
</body>
</html>