<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/category_play.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function eat_go() { location.href = "category_eat.do?cat=eat" }
	function drink_go() { location.href = "category_drink.do?cat=drink" }
	function search_pc() { location.href = "category_play.do?cat=PC방"; }
	function search_sr() { location.href = "category_play.do?cat=노래방"; }
	function search_sp() { location.href = "category_play.do?cat=스포츠"; }
	function search_et() { location.href = "category_play.do?cat=기타"; }
</script>
</head>

<body>

	<div id="top"> <jsp:include page="top.jsp" /> </div>
	<div class="biggerCategory">
		<div onclick="eat_go()">먹을거리</div>
		<div onclick="drink_go()">마실거리</div>
		<div class="bigChoice">즐길거리</div>
	</div>
	<div class="smallCategory">
		<div class="smallPlay">
			<div onclick="search_pc()">#PC방</div>
			<div onclick="search_sr()">#노래방</div>
			<div onclick="search_sp()">#스포츠</div>
			<div onclick="search_et()">#기타</div>
		</div>
	</div>
	<div class="cardview">
		<c:choose>
			<c:when test="${empty list}">
				<div class="noRes">
					<p> 표시할 결과가 없습니다. </p>
				</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${list}">
					<div class="card" onclick="location.href='store_detail.do?s_idx=${k.s_idx}'">
						<img alt="${k.s_img}" src="/resources/images/${k.s_img}">
						<div class="text_container">
							<h4><b>${k.s_name}</b></h4>
							<div class="texts">
								<c:set var="hash" value="${fn:split(k.s_hashtag, '+')}"></c:set>
								<c:forEach var="item" end="2" items="${hash}">
									${item}
								</c:forEach>
							</div>
							<div class="shop_info">
								<img alt="like" src="/resources/images/like.svg">
								<h5>${k.s_like}</h5>
								<img alt="review" src="/resources/images/write.svg">
								<h5>${k.s_comment}</h5>
								<img alt="watch" src="/resources/images/watch.svg">
								<h5>${k.s_view}</h5>
							</div> <!-- shop_info -->
						</div> <!-- text-container -->
					</div> <!-- card -->
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>