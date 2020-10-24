<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 가게 삭제</title>
<link rel="stylesheet" type="text/css" href="/resources/css/admin_store_add.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function update_go(f) {
		// 비밀번호 검사
		if(f.pwd.value == "mwadmin2020") {
			var chk = confirm("정말 삭제하시겠습니다?");
			if (chk) {
				f.action="store_delete_ok.do?cPage=${cPage}";
				f.submit();
			} else {
				history.go(-1);
			}
		} else {
			alert("비밀번호가 틀렸습니다. 다시 입력해주세요");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}
	}
	function list_go() { history.go(-1); }
</script>
</head>

<body>
	<div><jsp:include page="top.jsp" /></div>
	<div>
		<form method="post">
			<div class="table_title">
				<h2>가게 삭제</h2>
			</div>
			<table>
				<tbody>
					<tr>
						<th>가게 이름</th>
						<td>${svo.s_name}</td>
					</tr>
					<tr>
						<th>삭제 비밀번호 입력</th>
						<td><input type="password" name="pwd"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="hidden" name="s_idx" value="${svo.s_idx}">
							<input class="btns" type="button" value="삭제" onclick="delete_go(this.form)">
							<input class="btns" type="button" value="취소" onclick="list_go()">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>