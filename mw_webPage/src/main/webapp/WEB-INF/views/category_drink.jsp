<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/category_drink.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function eat_go() { location.href = "category_eat.do" }
	function play_go() { location.href = "category_play.do" }
	function search_al() { location.href = "cat_al.do"; }
	function search_cf() { location.href = "cat_cf.do"; }
</script>
</head>

<body>

	<div id="top"> <jsp:include page="top.jsp" /> </div>
	<div class="biggerCategory">
		<div onclick="eat_go()">먹을거리</div>
		<div class="bigChoice">마실거리</div>
		<div onclick="play_go()">즐길거리</div>
	</div>
	<div class="smallCategory">
		<div class="smallDrink">
			<div onclick="search_al()">#술집</div>
			<div onclick="search_cf()">#카페</div>
		</div>
	</div>
	<div id="category_res"> <jsp:include page="category_res.jsp" /> </div>
	
</body>
</html>