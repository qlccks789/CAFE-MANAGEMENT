<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <%@ include file="../include/include_style.jsp" %>
    <title>project</title>
  </head>

  <body>
     <%@ include file="../include/header.jsp" %>
    <!-- <div class="title_top">
    </div> -->
    <div class="main-body__register">
      <div class="register-container">
        <div class="input-container">
          <h2 class="cafe-register">카페 등록하기</h2>
          <form method='post' action='writing.do'>
          <br />
          <br />
          <div class="line">
            <!-- <input class="putin"> -->
          </div>
          <div class="line">
            <input type="text" placeholder="카페명" name="name"/>
          </div>
          <div class="line">
            <input type="text" placeholder="주소" name="address" />
          </div>
          <div class="line">
            <input type="text" placeholder="전화번호" name="phone" />
          </div>
          <div class="line">
            <input type="text" placeholder="이메일" name="email" />
          </div>
          <div class="line">
          	<input type="text" placeholder="소개하기" name="intro" />
          </div>
        </div>
        <div class="register-container2">
          <div class="image-container">
            <div class="wholecafe"></div>
            <div class="insidecafe"></div>
            <div class="insidecafe2"></div>
            <div class="insidecafe3"></div>
            <div class="insidecafe4"></div>
            <div class="insidecafe5"></div>
            <div class="insidecafe6"></div>
            <div class="insidecafe7"></div>
          </div>
          <br />
          <br />
          <br />
          <br />
          <button class="check">등록하기</button>
        </div>
        <br />
      </div>
    </div>
     	</form>
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
