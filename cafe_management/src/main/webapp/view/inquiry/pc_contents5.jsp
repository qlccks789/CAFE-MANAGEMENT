<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <%@ include file="../include/include_style.jsp" %>
    <title>Document</title>
  </head>
  <body>
   <%@ include file="../include/header.jsp" %>
    <div class="pccontainer">
      <div class="pcmc">에스프레소 머신 문의</div>
    </div>
    <hr />
    <br /><br />
    <div class="pcmc2">Q: 사이렌오더란 무엇인가요?</div>
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-07-09</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcps">
            <strong
              >A: 매장에서 줄을 서지 않고 주문하는 쉽고 간편한 O2O (Online to
              Offline) 서비스로서 앱을 통해 스타벅스 음료,푸드 및 원두의
              결제 및 주문을 완료하면 매장에서 즉시 메뉴를 받을 수 있는
               서비스 입니다.</strong
            >
          </p>
        </td>
      </tr>
    </table>

    <nav id="pageNav">
      <ul>
      <li><a href="pc_contents1.jsp">1</a></li>
        <li><a href="pc_contents2.jsp">2</a></li>
        <li><a href="pc_contents3.jsp">3</a></li>
        <li><a href="pc_contents4.jsp">4</a></li>
        <li><a href="pc_contents5.jsp">5</a></li>
        <li><a href="pc_contents1.jsp">다음</a></li>
      </ul>
    </nav>
   <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
