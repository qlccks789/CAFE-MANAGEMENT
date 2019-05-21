<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>카페후기 조회 리스트 화면</title>
       <%@ include file="../include/include_style.jsp" %>
  </head>
  <body>
    <%@ include file="../include/header.jsp" %>
    <br /><br />
    <!-- 카페후기조회(리스트) 몸통-->

    <div class="container">
      <div class="review_list__center">
        <div class="review_list__image">
          <div class="image1">
            <a href="">
              <img
                src="http://www.bing.co.kr/images/flagship/img_flagship_location_01.jpg"
              />
              <span id="text">
                스타벅스 신촌점
              </span>
            </a>
          </div>
        </div>
        <div class="review_list__reviewlist">
          <table class="review_list__listtable">
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>내용</th>
            </tr>
            <tr>
              <div>
                <td>1</td>
                <td>
                  <a href="review-detailselect.jsp">스타벅스 신촌점 후기</a>
                </td>
                <td>아메리카노가 너무 맛있어용</td>
              </div>
            </tr>
            <tr>
              <td>2</td>
              <td>스타벅스 신촌점 후기</td>
              <td>케이크 맛있어용</td>
            </tr>
            <tr>
              <td>3</td>
              <td>............</td>
              <td>~~~~~~~~~~~~~</td>
            </tr>
            <tr>
              <td>4</td>
              <td>............</td>
              <td>~~~~~~~~~~~~~</td>
            </tr>
            <tr>
              <td>5</td>
              <td>............</td>
              <td>~~~~~~~~~~~~~</td>
            </tr>
          </table>
        </div>

        <div class="review_page">
          <p>이전</p>
          <p>1</p>
          <p>2</p>
          <p>3</p>
          <p>4</p>
          <p>5</p>
          <p>다음</p>
        </div>
      </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
