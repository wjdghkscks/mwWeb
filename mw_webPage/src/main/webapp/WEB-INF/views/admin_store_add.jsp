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
		if (f.elements[0].value == "") {
			alert("가게 이름을 입력하세요.");
			f.elements[0].focus();
			return;
		} else if (f.elements[1].value == "") {
			alert("카테고리를 선택하세요.");
			f.elements[0].focus();
			return;
		} else if (f.elements[5].value == "") {
			alert("가게 주소를 입력하세요.");
			f.elements[5].focus();
			return;
		} else if (f.elements[6].value == "") {
			alert("전화번호를 입력하세요.");
			f.elements[6].focus();
			return;
		} else if (f.elements[7].value == "") {
			alert("영업시간을 입력하세요.");
			f.elements[7].focus();
			return;
		} else if (f.elements[8].value == "") {
			alert("대표메뉴를 입력하세요.");
			f.elements[8].focus();
			return;
		} else {
			var sbmt = confirm("이대로 제출하시겠습니까?");
			if (sbmt == true) {
				f.action="storeAddOk.do";
				f.submit();
			}
		}
		
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
						<td><input type="text" name="s_name" placeholder="정확한 가게 이름을 기입"></td>
					</tr>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="s_category">
								<option></option>
								<optgroup label="먹을거리">
									<option value="kr" selected="selected">한식</option>
									<option value="cn">중식</option>
									<option value="jp">일식</option>
									<option value="ws">양식</option>
									<option value="rf">간편식</option>
									<option value="bs">분식</option>
									<option value="ck">치킨</option>
									<option value="pz">피자</option>
									<option value="bk">베이커리</option>
									<option value="as">아시안</option>
								</optgroup>
								<optgroup label="마실거리">
									<option value="al">주류</option>
									<option value="cf">카페/디저트</option>
								</optgroup>
								<optgroup label="즐길거리">
									<option value="pc">PC방</option>
									<option value="sr">노래방</option>
									<option value="sp">스포츠</option>
									<option value="et">기타</option>
								</optgroup>
							</select>
						</td>
					</tr>
					<tr>
						<th>가게 설명</th>
						<td><input type="text" name="s_sub" placeholder="한 줄 설명 (최대 70자)"></td>
					</tr>
					<tr>
						<th>가게 사진</th>
						<td><input type="file" name="file" placeholder="파일 없음" /></td>
					</tr>
					<tr>
						<th>해시태그</th>
						<td>
							<input type="text" name="s_hashtag" placeholder="ex) #태그1&#태그2&#태그3"></textarea>
						</td>
					</tr>
					<tr>
						<th>가게 위치</th>
						<td><input type="text" name="s_location" placeholder="ex) 서울 서대문구 거북골로 34"/></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="s_tel" placeholder="ex) 02-000-0000"/></td>
					</tr>
					<tr>
						<th>영업시간</th>
						<td><input type="text" name="s_hour" placeholder="ex) 10:00-26:00"/></td>
					</tr>
					<tr>
						<th>대표메뉴</th>
						<td><input type="text" name="s_menu" placeholder="ex) 메뉴1, 메뉴2, 메뉴3"/></td>
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