<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <h1 class="goods_title complete_title">주문이 완료되었습니다 !!</h1>
          </div>
          <div class="buying_goods_info">
            <div class="goods_info_picture">
              <img
                src="https://images.philips.com/is/image/PhilipsConsumer/HD8325_07-IMS-ko_KR?$jpglarge$&wid=700"
                alt=""
                class="image"
              />
            </div>
            <div class="goods_info_item">
              <p class="goods_info_text">
                <span class="tit">가격</span>548,448,555 원
              </p>
              <p class="goods_info_text">
                <span class="tit">모델명</span>Francis Francis X7.1 캡슐커피머신
                [레드]
              </p>
            </div>
          </div>

          <div class="complete_info_wrap">
            <div class="complete_info_box">
              <div class="complete_info_item">
                <p>수령자 정보 입력</p>
                <p>이름 : 홍길동</p>
                <p>휴대전화번호: 010-0000-0000</p>
                <p>주소: 서울시 성동구 독서당로 23가길 298호</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
