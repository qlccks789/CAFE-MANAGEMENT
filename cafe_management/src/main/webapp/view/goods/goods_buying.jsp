<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<main class="goods">
	<div class="contents">
		<div class="inner">
			<div class="tit_wrap">
				<h1 class="goods_title">결제하기</h1>
			</div>
			<div class="buying_goods_info">
				<div class="goods_info_picture">
					<c:forEach var="image" items="${imageList}">
						<c:if
							test="${(goods.goodsNo == image.goodsNo) and (image.preImage == 1) }">

							<img
								src="/cafe_management/resources/images${image.path }/${image.sysname}"
								alt="" class="image" />
						</c:if>
					</c:forEach>
				</div>
				<div class="goods_info_item">
					<p class="goods_info_text">
						<span class="tit">가격</span>${goods.price } 원
					</p>
					<p class="goods_info_text">
						<span class="tit">모델명</span>Francis Francis X7.1 캡슐커피머신 [레드]
					</p>
				</div>
			</div>

			<div class="info_wrap">
				<div class="info_box buying">
					<div class="info_item">
						<p>수령자 정보 입력</p>
						<p>
							이름 : <input type="text" />
						</p>
						<p>
							휴대전화번호:<input type="text" />
						</p>
						<p>
							주소:<input type="text" />
						</p>
					</div>
				</div>
				<div class="info_box ordering">
					<div class="info_item">
						<p>주문내역</p>
						<br />
						<p>
							주문금액 : <input type="text" />
						</p>
						<p>
							할인금액 : <input type="text" />
						</p>
						<br />
						<p>
							최종금액 : <input type="text" />
						</p>
						<p>결제방법</p>
						<br /> <input type="radio" class="card" name="card" value="1" />
						<label for="email3">신용카드</label> <input type="radio"
							class="sendmoney" name="card" value="2" /> <label for="email3">계좌이체</label>
					</div>
				</div>
			</div>
			<div class="button_wrap">
				<a href="goods_buying_complete.html">
					<button type="button" class="btn_brown">결제</button>
				</a>
			</div>
		</div>
	</div>
	</main>
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
