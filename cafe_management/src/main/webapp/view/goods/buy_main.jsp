<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<%@ include file="/view/include/include_style.jsp"%>
<title>CAFE MANAGEMENT</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main class="goods buy_main">
	<div class="contents">
		<div class="inner">
			<div class="tit_wrap">
				<c:choose>
					<c:when test="${sort == 0 }">
						<h1 class="goods_title">제품 목록</h1>
					</c:when >
					<c:when test="${sort == 1 }">
						<h1 class="goods_title">에스프레소 머신 목록</h1>
					</c:when>
					<c:when test="${sort == 2 }">
						<h1 class="goods_title">에스프레소 캡슐 목록</h1>
					</c:when>
					<c:when test="${sort == 3 }">
						<h1 class="goods_title">텀블러 목록</h1>
					</c:when>
				</c:choose>
			</div>
			<div class="list_wrap">
				<ul>
					<c:forEach var="goods" items="${list}">
						<li class="goods_list">
							<a href="goods_detail.do?no=${goods.goodsNo}" class="goods_link">
								<c:forEach var="image" items="${imageList}">
										<c:if test="${(goods.goodsNo == image.goodsNo) and (image.preImage == 1) }">
											<img src="/cafe_management/resources/images${image.path }/${image.sysname}" alt="" class="goods_visual" />
										</c:if>
								</c:forEach>
								<div class="goods_info">
									<p class="goods_name">${goods.title }</p>
									<p class="goods_price">
										${goods.price }<span class="unit">원</span>
									</p>
								</div>
							</a>
						</li>
					</c:forEach>
					<%--               <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="https://images.philips.com/is/image/PhilipsConsumer/HD8761_06-IMS-ko_KR?wid=494&hei=435&$pnglarge$"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">y2.ttrrr</p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="https://ppss.kr/wp-content/uploads/2015/04/phili.jpg"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">
                      일리 캡슐커피/원두커피/분쇄커피 모음전y2.ttrrr
                    </p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="https://ppss.kr/wp-content/uploads/2015/04/saecc.jpg"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">y2.ttrrr</p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="http://thumbnail.10x10.co.kr/webimage/image/basic600/47/B000474022-2.jpg?cmd=thumb&w=500&h=500&fit=true&ws=false"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">
                      일리 캡슐커피/원두커피/분쇄커피 모음전y2.ttrrr
                    </p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="http://www.kv.co.kr/PRODUCT/Cafe/VA388-3.jpg"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">
                      일리 캡슐커피/원두커피/분쇄커피 모음전
                    </p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="http://static1.e-himart.co.kr/contents/goods/00/00/02/74/05/0000027405__ECP31.21__M_450_450.jpg"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">
                      일리 캡슐커피/원두커피/분쇄커피 모음전
                    </p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li>
              <li class="goods_list">
                <a href="goods_detail.html" class="goods_link">
                  <img
                    src="http://www.urbanchild.co.kr/shopimages/urbanchild/002002000059.jpg?1488504721"
                    alt=""
                    class="goods_visual"
                  />
                  <div class="goods_info">
                    <p class="goods_name">
                      일리 캡슐커피/원두커피/분쇄커피 모음전r
                    </p>
                    <p class="goods_price">
                      3,000,000,000<span class="unit">원</span>
                    </p>
                  </div>
                </a>
              </li> --%>
				</ul>
				<div class="pagination">
			<c:if test="${pageResult.count != 0}">
				<jsp:include page="/view/include/goodspagetype1.jsp">
					<jsp:param name="link" value="buy_main.do" />
				</jsp:include>
			</c:if>
<!--  					<a href="" class="on">1</a> <a href="">2</a> <a href="">3</a> <a
						href="">4</a> <a href="">5</a> <a href="">6</a> -->
				</div>
			</div>
		</div>
	</div>
	</main>
	<%@ include file="../include/footer.jsp"%>
		<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
		<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
