<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의 남기기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/qna_info.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function list_go() {
		location.href = "qna.do";
	}
</script>
</head>

<body>
	<div>
		<jsp:include page="top.jsp" />
	</div>
	
	<div class="wrap-all">
		<form>
			<div class="qna_title">
				<h2>문의 남기기</h2>
				<input type="text" value="${qna_detail.title}">
			</div>
			<div class="qna_context">
				<textarea autofocus>${qna_detail.content}</textarea>
			</div>
			<div class="qna_submit">
				<input type="button" value="수정">
				<input type="button" value="목록" onclick="list_go()">
			</div>
		</form>
	</div>
</body>
</html>