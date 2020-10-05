<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 정보</title>
<link rel="stylesheet" type="text/css" href="/resources/css/user_info.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function my_info() {
		location.href = "my_info.do";
	}
	function my_like() {
		location.href = "my_like.do";
	}
	function my_review() {
		location.href = "my_review.do";
	}
</script>
</head>

<body>

	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="wrap-all">
		<div class="info">
			<img alt="profile" src="/resources/images/avatar.svg">
			<div class="profile_text">
				<h2>닉네임</h2>
				<h4>@mw_manager_01</h4>
			</div>
		</div>
		<div class="user_menu">
			<div class="menu_item">
				<input type="button" value="정보 수정" onclick="my_info()">
			</div>
			<div class="menu_item">
				<input type="button" value="좋아요" onclick="my_like()">
			</div>
			<div class="menu_item" style="padding-bottom: 20px;">
				<input type="button" value="내 리뷰" onclick="my_review()">
			</div>
		</div>
	</div>
	

</body>
</html>