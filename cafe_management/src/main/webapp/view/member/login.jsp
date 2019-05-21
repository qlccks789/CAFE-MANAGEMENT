<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<%@ include file="../include/include_style.jsp"%>
<title>CAFE MANAGEMENT</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main>
	<div class="main-body__login">
		<div class="container">
			<div class="login">
				<form method="post" action="login.do">
					<div class="login-box">
						<div class="login-box__main-title">Login for Cafe Management
						</div>
						<div class="login-box__title">Id</div>
						<div class="login-box__input">
							<input type="text" class="login-input" name="id" />
						</div>
						<div class="login-box__title">Password</div>
						<div class="login-box__input">
							<input type="password" class="login-input" name="pass" />
						</div>
						<div class="login-box__btn">
							<button>Login</button>
						</div>
						<div class="login-box__social">
							<div class="social__title">
								<img
									src="data:image/png;base64,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" />
								<span>네이버 로그인</span>
							</div>
							<div class="social__title">
								<i class="fab fa-google-plus-square fa-2x"></i> <span>구글
									로그인</span>
							</div>
							<div class="social__title">
								<i class="fab fa-facebook fa-lg"></i> <span>페이스북 로그인</span>
							</div>
							<div class="social__title">
								<i class="fas fa-comment fa-lg"></i> <span>카카오톡 로그인</span>
							</div>
						</div>
						<div class="login-box__btn">
							<span class="login-box__check-member">아직 회원이 아니신가요?</span> <a
								href="/cafe_management/view/member/signup.jsp"><button type="button">Sign up</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</main>
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
	<script>
		let flag =
	<%=request.getParameter("loginflag")%>
		;
		if (flag === 1) {
			alert("로그인에 실패하셨습니다. \n아이디와 비밀번호를 다시 확인해주세요.\n아이디는 email 형식으로 입력하셔야 합니다.");
		}
		flag =
	<%=request.getParameter("idflag")%>
		;
		if (flag === 1) {
			alert("해당하는 아이디가 존재하지 않습니다.");
		}
	</script>
</body>
</html>
