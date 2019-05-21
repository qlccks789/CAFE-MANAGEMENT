<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<%@ include file="../include/include_style.jsp"%>
<title>Document</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
		<div class="pcmainh2">
			<ul class="mainLnb">
				<li><a href='../HTML/pc_list.jsp'>자주하는 질문 FAQ</a>
					<ul>
						<li><a href='pc_contents2.jsp'>에스프레소 머신</a></li>
						<li><a href='pc_contents3.jsp'>에스프레소 캡슐</a></li>
						<li><a href='pc_contents4.jsp'>텀블러</a></li>
					</ul></li>
				<li><a href='#'>고객센터</a>
					<ul>
						<li><a href='pc_information.jsp'>고객센터 공지사항</a></li>
						<li><a href='pc_introduction.jsp'>고객센터 상세문의</a></li>
					</ul></li>
				<li><a href='#'>관리자</a>
					<ul>
						<li><a href='pc_update.jsp'>문의 정보 전체조회</a></li>
						<li><a href='pc_detail.jsp'>문의 정보 상세조회</a></li>
						<li><a href='pc_comment.jsp'>문의 정보 답변등록</a></li>
						<li><a href='pc_update.jsp'>문의 정보 내용수정</a></li>
						<li><a href='pc_delete.jsp'>문의 정보 내용삭제</a></li>
					</ul></li>
			</ul>
			<div class="pcmd"></div>
		</div>
	</div>
	<hr />


	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
