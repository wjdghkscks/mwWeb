<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>가게 추가</title>
<link rel="stylesheet" type="text/css" href="/resources/css/admin_store_add.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function send_go(f) {
		// 유효성 검사
		for (var i = 0; i < f.elements.length; i++) {
			if (f.elements[i].value == "") {
				alert(f.elements[i].name + "를 입력하세요.");
				f.elements[i].focus();
				return;
			}
		}
		f.action="storeAddOk.do";
		f.submit();
	}
	function list_go() { history.go(-1); }
</script>
</head>

<body>
	<div><jsp:include page="top.jsp" /></div>
	<div>
		<form method="post" encType="multipart/form-data">
			<div class="table_title">
				<h2>게시판 글쓰기</h2>
			</div>
			<table>
				<tbody>
					<tr>
						<th>가게 이름</th>
						<td><input type="text" name="s_name" placeholder="가게 이름"></td>
					</tr>
					<tr>
						<th>가게 설명</th>
						<td><input type="text" name="s_sub" placeholder="가게에 대한 한 줄 설명"></td>
					</tr>
					<tr>
						<th>가게 사진</th>
						<td><input type="file" name="file"/></td>
					</tr>
					<tr>
						<th>해시태그</th>
						<td>
							<input type="text" name="s_hashtag" placeholder="'#'을 붙이며, 띄어쓰기 없이 '-' 로 구분"></textarea>
						</td>
					</tr>
					<tr>
						<th>가게 위치</th>
						<td><input type="text" name="s_location" placeholder="가게 상세 주소"/></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="s_tel" placeholder="가게 전화번호"/></td>
					</tr>
					<tr>
						<th>영업시간</th>
						<td><input type="text" name="s_hour" placeholder="가게 영업시간"/></td>
					</tr>
					<tr>
						<th>대표메뉴</th>
						<td><input type="text" name="s_menu" placeholder="대표 메뉴 3가지 정도"/></td>
					</tr>
					<tr>
						<td colspan="2">
							<input class="btns" type="button" value="제출" onclick="send_go(this.form)">
							<input class="btns" type="button" value="뒤로" onclick="list_go()">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>