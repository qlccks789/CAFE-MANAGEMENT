<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
    <div class="main-body__search">
      <div class="search-container">
        <div class="list-container">
          <br />
          <br />
          <br />
          <h2 class="find">매장찾기</h2>
          <br />
          <p class="input">
            <input
              type="text"
              name="매장찾기"
              placeholder="지점명으로 까페를 찾아보세요"
            />
            <button class="search">검색</button>
          </p>
          <br />
          <br />
          <br />
          <table class="cafe-table">
              <tr>
                <th>글번호</th>
                <th>까페명</th>
                <th>이메일</th>
                <th>주소</th>
                <th>전화번호</th>
              </tr>
             <c:forEach var="list" items="${list}">
              <tr>
              	<td><a href="detail.do?cafeNo=${list.cafeNo}">${list.cafeNo}</a></td>
              	<td>${list.name}</td>
              	<td>${list.email}</td>
              	<td>${list.address}</td>
              	<td>${list.phone}</td>
            </tr>
             </c:forEach>
     	  </table>
     	<br>
     	<br>
     	<br>
     	<div class="two__button">
     	<div class="mod__del__button"></div>
     	</div>
     	</div>
     	</div>
     	</div>
        
     
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
