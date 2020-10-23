<%@page import="com.mw.db.SVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가게 상세</title>
<link rel="stylesheet" type="text/css" href="/resources/css/store_detail.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function like_store() {
		location.href = "add_store_like.do";
	}
	function like_review() {
		location.href = "add_store_review.do";
	}
	function kMap_search() {
		var k_url = "https://map.kakao.com/link/search/${svo.s_name}";
		newPage = window.open(k_url);
	}
</script>
</head>

<body>
	
	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="wrap-all">
		<div class="header">
			<div class="header_top">
				<div class="info_title">
					<h2>${svo.s_name}&nbsp;<span class="title_cat">${svo.s_cat_s}</span></h2>
					<h5>${svo.s_sub}</h5>
				</div>
				<div class="numbers">
					<div>
						<h5>${svo.s_like}&nbsp;
						<img alt="like" src="/resources/images/like.svg"></h5>
					</div>
					<div>
						<h5>${svo.s_comment}&nbsp;
						<img alt="write" src="/resources/images/write.svg"></h5>
					</div>
					<div>
						<h5>${svo.s_view}&nbsp;
						<img alt="view" src="/resources/images/watch.svg"></h5>
					</div>
				</div>
			</div>
			
			<div class="photos">
				<div class="pic_container">
					<img alt="" src="/resources/upload/${svo.s_img}">
				</div>
			</div>
			
			<div class="hashtag">
				<c:set var="hash" value="${fn:split(svo.s_hashtag, '&')}"></c:set>
				<c:forEach var="item" end="2" items="${hash}">
					<form>
						<div class="hash_item"> ${item} </div>
					</form>
				</c:forEach>
			</div>
			
		</div>
		
			<hr class="only_mobile">
		
			<div class="brief">
				<div class="brief_item" onclick="kMap_search()">
					<img alt="search" src="/resources/images/kakaomap_favicon.ico">
					<h5>카카오맵</h5>
				</div>
				<div class="brief_item" id="url_share">
					<img alt="search" src="/resources/images/share.svg">
					<h5>공유</h5>
				</div>
				<div class="brief_item">
					<img alt="search" src="/resources/images/like.svg" onclick="like_store()">
					<h5>좋아요</h5>
				</div>
			</div>
		
		<hr class="only_mobile">
			
		<div class="article">
			<div class="store_info">
				<h2>가게 정보</h2>
				<ul>
					<li><b>가게위치&nbsp;&nbsp;</b>${svo.s_location}</li>
					<li><b>전화번호&nbsp;&nbsp;</b>${svo.s_tel}</li>
					<li><b>영업시간&nbsp;&nbsp;</b>${svo.s_hour}</li>
					<li><b>대표메뉴&nbsp;&nbsp;</b>${svo.s_menu}</li>
				</ul>
			</div>
			
			<hr class="only_mobile">
			
			
			
			<div class="store_map">
				<h2>지도</h2>
				<div id="kakaoMap" class="kMap"></div>
				<!-- KakaoMap API -->
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=aeab532356c7d13bb662d58b2c6ebedd"></script>
				<script>
					var container = document.getElementById('kakaoMap'); 			// 지도를 담을 영역의 DOM 레퍼런스
					var options = { 												// 지도를 생성할 때 필요한 기본 옵션
						center: new kakao.maps.LatLng(${svo.s_lat}, ${svo.s_lng}), 	// 지도의 중심좌표.
						draggable: false,											// 지도 이동 X
						level: 3 													// 지도의 레벨(확대, 축소 정도)
					};
					var map = new kakao.maps.Map(container, options); 				// 지도 생성 및 객체 리턴
					
					// kakaoMap controller
					var mapTypeControl = new kakao.maps.MapTypeControl();
					map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
					var zoomControl = new kakao.maps.ZoomControl();
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
					// marker
					var markerPosition  = new kakao.maps.LatLng(${svo.s_lat}, ${svo.s_lng}); 

					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});

					marker.setMap(map);
				</script>
			</div>
			
			<hr class="only_mobile">
			
			<div class="store_review">
				<h2>리뷰</h2>
				<div class="store_review_context">
					<div class="reviewer">
						<div class="reviewer_info">
							<h5><b>작성자 이름</b></h5>
							<p>방문 일자가 여기에 표시됩니다.</p>
						</div>
						<div class="review_like">
							<img alt="like" src="/resources/images/like.svg" onclick="like_review()">
							<p>109</p>
						</div>
					</div>
					<hr>
					<div class="review_context">
						<p>
							리뷰 내용이 여기에 표시됩니다. 리뷰 내용이 여기에 표시됩니다. 리뷰 내용이 여기에 표시됩니다.
						</p>
					</div>
				</div>
				<div class="store_review_context">
					<div class="reviewer">
						<div class="reviewer_info">
							<h5><b>작성자 이름</b></h5>
							<p>방문 일자가 여기에 표시됩니다.</p>
						</div>
						<div class="review_like">
							<img alt="like" src="/resources/images/like.svg" onclick="like_review()">
							<p>98</p>
						</div>
					</div>
					<hr>
					<div class="review_context">
						<p>
							리뷰 내용이 여기에 표시됩니다.
						</p>
					</div>
				</div>
				<div class="store_review_context">
					<div class="reviewer">
						<div class="reviewer_info">
							<h5><b>작성자 이름</b></h5>
							<p>방문 일자가 여기에 표시됩니다.</p>
						</div>
						<div class="review_like">
							<img alt="like" src="/resources/images/like.svg" onclick="like_review()">
							<p>87</p>
						</div>
					</div>
					<hr>
					<div class="review_context">
						<p>
							리뷰 내용이 여기에 표시됩니다. 리뷰 내용이 여기에 표시됩니다.
						</p>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
</body>
</html>