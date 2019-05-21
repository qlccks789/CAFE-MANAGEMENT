<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
        <%@ include file="../include/include_style.jsp" %>
  </head>
  <body>
    <!-- 헤더 -->
   <%@ include file="../include/header.jsp" %>
    <!-- 수정 몸통-->
    <div class="review-update-all">
      <div class="review-update-centercolor">
        <div class="container">
          <br /><br /><br />
          <div class="review-update__color">
            <div class="review-update__header">
              <p class="review-update__header__text">후기 글 수정</p>
            </div>

            <div class="review-update__title">
              <div class="review-update__title__textinput">
                <p class="review-update__title__text">제목</p>
                <textarea
                  name="review-insert__title-input"
                  placeholder="제목을 입력하세요."
                ></textarea>
              </div>
            </div>

            <div class="review-update__rating-point">
              <p class="review-update__rating-point__text">평가</p>
              <div id="reviewStars-input">
                <input id="star-4" type="radio" name="reviewStars" />
                <label title="gorgeous" for="star-4"></label>

                <input id="star-3" type="radio" name="reviewStars" />
                <label title="good" for="star-3"></label>

                <input id="star-2" type="radio" name="reviewStars" />
                <label title="regular" for="star-2"></label>

                <input id="star-1" type="radio" name="reviewStars" />
                <label title="poor" for="star-1"></label>

                <input id="star-0" type="radio" name="reviewStars" />
                <label title="bad" for="star-0"></label>
              </div>
            </div>

            <div class="review-update__content">
              <div class="review-update__content__textinput">
                <p class="review-update__content__text">내용</p>
                <textarea
                  name="review-update__content-input"
                  rows="8"
                  cols="60"
                  placeholder="내용을 입력하세요."
                ></textarea>
              </div>
            </div>

            <div class="review-update__updatebutton">
                
              <a href="#"><button>수정</button></a>
              <a href="review-main.jsp"><button>취소</button></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 푸터 -->
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
