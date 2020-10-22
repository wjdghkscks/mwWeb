<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<link rel="stylesheet" type="text/css" href="/resources/css/category_play.css">
</head>

<body>
	
	<div class="cardview">
		<c:choose>
			<c:when test="${empty categoryRes}">
				<div class="noRes">
					<p> 검색 결과가 없습니다. </p>
				</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${categoryRes}">
					<div class="card" onclick="location.href='store_detail.do?s_idx=${k.s_idx}'">
						<img alt="store" src="/resources/upload/${k.s_img}">
						<div class="text_container">
							<h4><b>${k.s_name}</b></h4>
							<p>
								<c:set var="hash" value="${fn:split(k.s_hashtag, '&')}"></c:set>
								<c:forEach var="item" items="${hash}">
									${item}
								</c:forEach>
							</p>
							<div class="shop_info">
								<img alt="like" src="/resources/images/like.svg">
								<h5>${k.s_like}</h5>
								<img alt="like" src="/resources/images/write.svg">
								<h5>${k.s_comment}</h5>
								<img alt="like" src="/resources/images/watch.svg">
								<h5>${k.s_view}</h5>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>