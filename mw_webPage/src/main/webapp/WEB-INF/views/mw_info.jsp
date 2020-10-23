<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>명월 소개</title>
<link rel="stylesheet" type="text/css" href="/resources/css/mw_info.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	    $('.mw_info_title').animate({
	    	opacity: '1'
	    }, 1200, function() {
	    	$('.mw_info_context').animate({
		    	opacity: '1'
		    }, 1200);
		});
	});
</script>
</head>

<body>
	<div><jsp:include page="top.jsp" /></div>

	<div class="wrap_all">
		<div class="mw_info_title">
			<h2>#함께해요</h2>
			<h2>#명지월드</h2>
		</div>
		<div class="mw_info_context">
			<div>
				<p><span class="txt_hlt">'명월-명지월드의 모든 것'</span>은<br>어쩌구저쩌구해서 요렇게 저렇게 <br>활동하고 있는 블라블라입니다.</p>
				<div class="sns_link">
					<p>facebook</p>
					<p>instagram</p>
					<p>youtube</p>
				</div>
				<div>
					<p> myongjiworld@gmail.com </p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>