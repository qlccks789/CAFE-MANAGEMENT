<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <%@ include file="../include/include_style.jsp" %>
    <title>CAFE MANAGEMENT</title>
  </head>

  <body>
  <%@ include file="../include/header.jsp" %>
    <main class="goods goods_detail">
      <div class="contents">
        <div class="inner">
          <div class="goods_detail_wrap">
            <div class="goods_detail_visualside">
            	<c:forEach var="image" items="${images }">
            		<c:if test="${image.preImage eq 1 }">
             	 	<img
               		 src="/cafe_management/resources/images${image.path }/${image.sysname}"
               	 		alt=""
               		 class="goods_detail_picture"
             		 />
              		</c:if>
              	</c:forEach>
            </div>
            <div class="spec">
              <p class="spec_title" id="title">
                ${goods.title }
              </p>
              <p class="spec_text">
                <span class="tit">가격</span> ${goods.price } 원
              </p>
              <p class="spec_text"><span class="tit">배송비</span> ${goods.deliveryPrice } 원</p>
              <p class="spec_text">
                <span class="tit">모델명</span> ${goods.name }
              </p>
              <p class="spec_text"><span class="tit">제조사</span> ${goods.manufacturer }</p>
              <p class="spec_text"><span class="tit">원산지</span> ${goods.country }</p>
              <p class="spec_text"><span class="tit">옵션</span> -</p>
            </div>
          </div>
          <div class="tab_wrap">
            <ul>
              <li class="tab_li">
                <input type="radio" name="tab" checked="checked" id="rd01" />
                <!-- 인풋의 id 값과 label for 매칭 해야함 -->
                <label for="rd01">상품정보</label>
                <div class="tabCont">${goods.goodsInfo }</div>
              </li>
              <li class="tab_li">
                <input type="radio" name="tab" id="rd02" />
                <label for="rd02">교환 및 반품 안내</label>
                <div class="tabCont">
                  ${goods.changeInfo }
                </div>
              </li>
              <li class="tab_li">
                <input type="radio" name="tab" id="rd03" />
                <label for="rd03">배송 정보</label>
                <div class="tabCont">
                  ${goods.deliveryInfo }
                </div>
              </li>
            </ul>
          </div>
          <div class="button_wrap two">
          	<a href="${pageContext.request.contextPath}/view/goods/buy_main.do?pageNo=1&sort=0">
				<button type="button" class="btn_line_white">목록</button>
			</a>
            <a href="" >
              <button type="button" class="btn_brown">구매</button>
            </a>
          </div>
        </div>
      </div>
    </main>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script>
    </script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
