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

    <div class="whole">
      <div class="password">
        <p class="bimilbunho">
          비밀번호:
          <input type="text" name="pass" placeholder="비밀번호를 입력하세요" />
          <button class="ipryeok">입력</button>
        </p>
      </div>
    </div>
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>

