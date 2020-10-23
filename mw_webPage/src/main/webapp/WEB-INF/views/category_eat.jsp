<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/category_eat.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function drink_go() { location.href = "category_drink.do" }
	function play_go() { location.href = "category_play.do" }
</script>
</head>

<body>

	<div id="top"> <jsp:include page="top.jsp" /> </div>
	<div class="biggerCategory">
		<div class="bigChoice">먹을거리</div>
		<div onclick="drink_go()">마실거리</div>
		<div onclick="play_go()">즐길거리</div>
	</div>
	<div class="smallCategory">
		<div class="smallEat">
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
	<div id="category_res"> <jsp:include page="category_res.jsp" /> </div>
	
</body>
</html>