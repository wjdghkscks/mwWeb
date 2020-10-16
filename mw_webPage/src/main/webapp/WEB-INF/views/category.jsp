<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<link rel="stylesheet" type="text/css" href="/resources/css/category.css">
</head>

<body>

	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="wrap-all">
		<div class="biggerCategory">
			<div style="border-color: #e8a761; background-color: #e8a761; color: white;">먹거리</div>
			<div>마실거리</div>
			<div>놀거리</div>
		</div>
		<div class="smallCategory">
			<div class="smallHash">
				<div>#한식</div>
				<div>#중식</div>
				<div>#일식</div>
				<div>#양식</div>
				<div>#간편식</div>
				<div>#분식</div>
				<div>#치킨</div>
				<div>#피자</div>
				<div>#베이커리</div>
				<div>#아시안</div>
			</div>
		</div>
		 <div class="story">
		 	<h4>검색 결과</h4>
		 </div>
		<div class="cardview">
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
		</div>
	</div>
</body>
</html>