<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카테고리 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/category_play.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function eat_go() { location.href = "category_eat.do" }
	function drink_go() { location.href = "category_drink.do" }
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
			<div>#PC방</div>
			<div>#노래방</div>
			<div>#스포츠</div>
			<div>#기타</div>
		</div>
	</div>
	<div id="category_res"> <jsp:include page="category_res.jsp" /> </div>
	
</body>
</html>