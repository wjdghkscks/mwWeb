<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>검색하기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<link rel="stylesheet" type="text/css" href="/resources/css/search_main.css">
<script type="text/javascript">
	function back_go() {
		history.go(-1);
	}
</script>
</head>
	
<body>

	<div class="search_main_searchbar">
		<a onclick="back_go()"><img alt="back" src="/resources/images/back_icon.svg"></a>
		<input type="text" name="search" placeholder="검색어를 입력해주세요.">
		<img alt="search" src="/resources/images/search_icon.svg">
	</div>
	
	<div class="search_main_items">
		<div class="search_main_recent">
			<h4>최근 검색</h4>
			<ul>
				<li>
					<div class="search_main_item">
						마카롱
						<span style="opacity: 50%">X</span>
					</div>
				</li>
				<li>
					<div class="search_main_item">
						런드리즈
						<span style="opacity: 50%">X</span>
					</div>
				</li>
				<li>
					<div class="search_main_item">
						감자탕
						<span style="opacity: 50%">X</span>
					</div>
				</li>
			</ul>
		</div>
		
		<div class="search_main_recommand">
			<h4>추천 검색</h4>
			<ul>
				<li>
					<div class="search_main_item">
						베가보쌈
						<span style="opacity: 50%">X</span>
					</div>
				</li>
				<li>
					<div class="search_main_item">
						단체
						<span style="opacity: 50%">X</span>
					</div>
				</li>
				<li>
					<div class="search_main_item">
						떡볶이 맛집
						<span style="opacity: 50%">X</span>
					</div>
				</li>
			</ul>
		</div>
	</div>

</body>
</html>