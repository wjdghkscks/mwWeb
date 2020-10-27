<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/top.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resetAll.css">
<script type="text/javascript">
	function userLogin_go(f) {
		f.action = "";
		f.submit();
	}
	function kakaoAdd_go() {
		location.href = "kakaoLogin.do";
	}
</script>
</head>

<body style="background-color: white;">
	<header class="main_header">
		<div class="top_menu">
			<a href="submenu_mobile.do"><img alt="menu" src="/resources/images/menu.svg"></a>
		</div>
		<div class="top_title">
			<a href="main.do"><img alt="logo" src="/resources/images/mw_logo.svg"></a>
		</div>
		<div class="top_search">
			<a href="search_main.do"><img alt="search" src="/resources/images/search_icon.svg"></a>
		</div>
		<nav class="main_navi">
			<ul class="navi_wrap">
				<li><a href="mw_info.do">					명월소개	</a></li>
				<li><a href="category_eat.do?cat=먹을거리">	가게찾기	</a></li>
				<li><a href="qna.do">						문의하기	</a></li>
				<li><a id="myBtn">							내정보	</a></li>
			</ul>
		</nav>
		
		<!-- Login Modal -->
		<div id="myModal" class="modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<h2>로그인</h2>
				<div class="modalIn">
					<form method="post">
						<div class="userInfo_container">
							<div class="userInfo">
								<input type="text" name="m_id" placeholder="아이디를 입력하세요.">
								<input type="password" name="m_pw" placeholder="비밀번호를 입력하세요.">
							</div>
							<div class="loginBtn" onclick="userLogin_go(this.form)">로그인</div>
						</div>
						<div class="socialLogin">
							<div><img alt="emailAdd" src="/resources/images/email_add_btn.png" onclick="kakaoAdd_go()"></div>
							<div><img alt="kakaoAdd" src="/resources/images/kakao_add_btn.png" onclick="kakaoAdd_go()"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			var modal = document.getElementById("myModal");
			var btn = document.getElementById("myBtn");
			var span = document.getElementsByClassName("close")[0];

			btn.onclick = function() {
				modal.style.display = "block";
			}
			span.onclick = function() {
				modal.style.display = "none";
			}
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
		
	</header>
	<hr>
</body>

</html>