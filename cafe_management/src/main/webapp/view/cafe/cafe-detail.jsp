<%@page import="kr.co.bitguys.repository.vo.CafeVO"%>
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
    <!-- <div class="title_top">
    </div> -->
    <div class="main-body__detail">
      <div class="detail-container">
        <div class="input2-container">
          <h2 class="cafe-detail">카페 상세조회하기</h2>
          <br />
          <br />
          <br />
          <br />
          <table class="info__5">
          	   <tr>
             	<th>글번호</th>
                <th>카페명</th>
                <th>주소</th>
                <th>이메일</th>
               <th>전화번호</th>
               </tr>      
               <tr>
               <td>${cafe.cafeNo}</td>
               <td>${cafe.name}</td>
               <td>${cafe.address}</td>
               <td>${cafe.email}</td>
               <td>${cafe.phone}</td>
               </tr>
              </table>
             
          <br>
          <br>
          <br>	
                 <div class="button__2">
                 <button class="del__"><a href='updateform.do?cafeNo=${cafe.cafeNo}'>수정하기</a></button>
        		 <button class="mod__"><a href='delete.do?cafeNo=${cafe.cafeNo}'>삭제하기</a></button>	 	
        		</div>
            <br />
            <br />
            <br />
            <div class="wholecafe__detail"></div>
              <div class="button__2">
              <br />
              <br />
              <br />
            </div>
            
          <br />
        <br />
      </div>
    </div>
    </div>
    
    <!-- <br />
    <br /> -->
    <!-- <div class="line">
      <div class="ll"></div>
      <div class="rr"></div>
    </div> -->
     <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
