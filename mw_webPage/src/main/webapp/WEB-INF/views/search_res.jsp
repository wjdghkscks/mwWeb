<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가게 검색</title>
<link rel="stylesheet" type="text/css" href="/resources/css/search_res.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function searchBtn(f) {
		// 유효성 검사
		var keyWord = f.keyWord.value;
		if(keyWord == "") {
			alert("검색할 단어를 입력해주세요.");
			f.keyWord.value="";
			f.keyWord.focus();
			return;
		} else {
			f.action = "search.do";
			f.submit();
		}
	}
</script>
</head>

<body>
	<div><jsp:include page="top.jsp" /></div>
	
	<!-- 검색창 이벤트 처리 -->
	<script type="text/javascript">
		$(function() {
			var innerWidth = window.innerWidth;
			$("#search_bar").click(function() {
				if (innerWidth < 992) {
					location.href = "search_main.do";
				}
				if (innerWidth >= 992) {
					$("#popUpContent").show(0);
				}
			});
			$(document).mouseup(function (e){
			    var container = $("#popUpContent");
			    if(container.has(e.target).length === 0){
			    	container.hide(0);
			    }
			});
		});
	</script>
	
	<form>
		<div class="search_res_searchbar">
			<input type="image" src="/resources/images/search_icon.svg" alt="search" onclick="searchBtn(this.form)">
			<p><input id="search_bar" type="text" name="keyWord" placeholder="${keyWord}"></p>
		</div>
		
		<div id="modal" class="search_modal">
			<div id="popUpContent" class="search-bar-click" style="display: none;">
				<div class="prev_search">
					<!-- *cookie 정보 처리 필요 -->
					<h5>검색 기록</h5>
					<p>검색어1</p>
					<p>검색어2</p>
					<p>검색어3</p>
				</div>
				<div class="want_search">
					<h5>추천 검색어</h5>
					<p>검색어1</p>
					<p>검색어2</p>
					<p>검색어3</p>
				</div>
			</div>
		</div>
	</form>
	
	<div class="cardview">
		<c:choose>
			<c:when test="${empty store_list}">
				<div class="noRes">
					<p> 검색 결과가 없습니다. </p>
				</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${store_list}">
					<div class="card">
						<div>${k.store_img}</div>
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