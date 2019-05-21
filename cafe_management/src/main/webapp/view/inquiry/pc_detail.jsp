<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>           
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <%@ include file="../include/include_style.jsp" %>
    <title>Document</title>
  </head>
  <body>
  <%@ include file="../include/header.jsp" %>

     <div class="pcsummary">문의 상세 조회</div>
     <c:set var="inquireDetail" value="${inquireDetail}"/>
      <hr class="enrollhr" />
      
      <table class="pccommt">  
            <tr>
            <td class="pcdetail2">문의번호:${inquireDetail.inqNo}</td>
         </tr>
         <tr>      
            <td class="pcdetail2">제목:${inquireDetail.title}</td>
         </tr>      
         <tr>
            <td class="pcdetail2">내용:${inquireDetail.content}</td>
         </tr>    
      </table>
      <hr>

    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>