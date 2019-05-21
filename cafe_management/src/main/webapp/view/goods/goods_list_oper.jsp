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
    <main class="goods">
      <div class="contents">
        <div class="inner">
          <div class="tit_wrap">
            <h1 class="goods_title">제품 목록</h1>
          </div>
          <div class="list_oper_form">
          <c:forEach var="goods" items="${ list}">
            <div class="list_oper_content">
              <a href="${pageContext.request.contextPath}/view/goods/goods_detail_oper.do?no=${goods.goodsNo }" class="oper_content_box">
                <span class="oper_content_text">상품번호 : ${goods.serialNo }</span>
                <span class="oper_content_text"
                  >모델명 : ${goods.name }</span
                >
                <span class="oper_content_text">가격 : ${goods.price } 원</span>
                <span class="oper_content_text">재고 : ${goods.stack }</span>
              </a>
            </div>
            </c:forEach>
<%--            <div class="list_oper_content">
              <a href="#" class="oper_content_box">
                <span class="oper_content_text">상품번호 : 458542BXE45</span>
                <span class="oper_content_text"
                  >모델명 : Francis Francis X7.1 캡슐커피머신 [레드]</span
                >
                <span class="oper_content_text">가격 : 454,585,421 원</span>
                <span class="oper_content_text">재고 : 45487</span>
              </a>
            </div>
            <div class="list_oper_content">
              <a href="#" class="oper_content_box">
                <span class="oper_content_text">상품번호 : 458542BXE45</span>
                <span class="oper_content_text"
                  >모델명 : Francis Francis X7.1 캡슐커피머신 [레드]</span
                >
                <span class="oper_content_text">가격 : 454,585,421 원</span>
                <span class="oper_content_text">재고 : 45487</span>
              </a>
            </div>
          </div> --%>
          <div class="button_wrap goods_list_oper_button">
            <a href="${pageContext.request.contextPath}/view/goods/goods_insert_oper.jsp">
              <button type="button" class="btn_brown">등록</button>
            </a>
          </div>
          <div class="pagination">
			<jsp:include page="/view/include/goodspagetype1.jsp">
				<jsp:param name="link" value="goods_list_oper.do" />
			</jsp:include>
          </div>
        </div>
      </div>
    </main>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
