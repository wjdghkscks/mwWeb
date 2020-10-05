<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의 남기기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/write_qna.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function write_qna(f) {
		f.action = "";
		f.submit();
	}
	function back_go() {
		history.go(-1);
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
				<input type="text" placeholder="제목을 입력하세요.">
			</div>
			<div class="qna_context">
				<textarea placeholder="문의 내용을 입력하세요." autofocus></textarea>
			</div>
			<div class="qna_submit">
				<input type="button" value="제출">
				<input type="button" value="취소" onclick="back_go()">
			</div>
		</form>
	</div>
	
</body>
</html>