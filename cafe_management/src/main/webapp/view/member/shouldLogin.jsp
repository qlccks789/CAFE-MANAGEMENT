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
<style>
.container .shouldLogin {
	width: 100%;
	height: 600px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container .shouldLogin .shouldLogin__text {
	font-size: 48px;
	font-family: "Jua", sans-serif;
}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main>
	<div class="container">
		<div class="shouldLogin">
			<span class="shouldLogin__text">Login 진행 후 이용가능합니다.</span>
		</div>
	</div>
	</main>
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
