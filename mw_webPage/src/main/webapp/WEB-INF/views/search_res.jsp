<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>검색하기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<link rel="stylesheet" type="text/css" href="/resources/css/search_res.css">
</head>

<body>
	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="search_res_searchbar">
		<img alt="search" src="/resources/images/search_icon.svg">
		<input type="text" name="search" placeholder="${keyWord}">
	</div>
	
	<div class="cardview">
		<c:choose>
			<c:when test="empty ${store_list}">
				<p> 검색 결과가 존재하지 않습니다. </p>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${store_list}">
					<div class="card">
						${k.store_img}
						<div class="text_container">
							<h4><b>${k.store_name}</b></h4>
							<p>${k.store_hashtag}</p>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>