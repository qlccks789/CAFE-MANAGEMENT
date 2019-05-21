<%@page import="kr.co.bitguys.repository.vo.CafeVO"%>
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
     <form method='post' action='update.do'>
     <input type="hidden" name='cafeNo' value="${cafe.cafeNo}" />
    <div class="modify-container">
      <div class="crazy">
        <h2 class="eq900">카페 수정하기</h2>
        <div class="header__center">
          <div class="header__a"></div>
          <div class="header__b"></div>
          <div class="header__c"></div>
          <div class="header__d"></div>
          <div class="header__e"></div>
          <div class="header__f"></div>
          <div class="header__g"></div>
          <div class="header__h"></div>
        </div>
      </div>

      <div class="modify-container2">
        <br />
        <br />
        <div class="inform">
                  <input type="text" name='name' value="${cafe.name}" placeholder="카페명을 입력하세요"/>
        </div>
        <br />
        <br />
        <div class="inform">
                   <input type="text" name='address' value="${cafe.address}" placeholder="주소를 입력하세요"/>
        </div>
        <br />
        <br />
        <div class="inform">
                  <input type="text" name='phone' value="${cafe.phone}" placeholder="연락처를 입력하세요"/>
        </div>
        <br />
        <br />
        <div class="inform">
                  <input type="text" name='email' value="${cafe.email}" placeholder="이메일을 입력하세요"/>
        </div>
        <div class="option">
          <button type="submit" class="upload__modify">수정하기</button>
        </div>
      </div>
    </div>
 </form>
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
