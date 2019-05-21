<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<%@ include file="../include/include_style.jsp"%>
<title>Document</title>
</head>
<body>
   <%@ include file="../include/header.jsp"%>
   <div class="pccontainer">
      <div class="pcmc">문의정보 전체조회</div>
   </div>

   <table id="tableDesign">

      <caption>전체조회</caption>

      <tr>
         <th><span>번호</span></th>
         <th><span>제목</span></th>
         <th><span>등록일</span></th>
         <th><span>조회수</span></th>
      </tr>
      <c:forEach var="inquire" items="${list}">
         <tr>
            <td class="pcNo">${inquire.inqNo}</td>
            <td class="leftstyle"><a
               href='pc_detail.do?no=${inquire.inqNo}'>${inquire.title}</a></td>
            <td class="leftstyle"><fmt:formatDate pattern="yyyy년 MM월 dd일"
                  value="${inquire.regDate}" /></td>
            <td class="leftstyle">${inquire.viewCnt}</td>
         </tr>
      </c:forEach>
   </table>

   <hr>
   <nav id="pageNav">
      <ul>
         <div class="pagination">
            <a href="#">이전</a>
            <c:if test="${pageResult.count != 0}">
               <a href="#">다음</a>
               <jsp:include page="/view/include/inquirepagetype.jsp">
                  <jsp:param name="link" value="pc_index.do" />
               </jsp:include>
            </c:if>
         </div>
      </ul>
   </nav>
   <br />
   <%@ include file="../include/footer.jsp"%>
   <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
   <script src="../../resources/js/common/top_button.js"></script>
</body>
</html>