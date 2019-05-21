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
      <div class="pcmc">에스프레소 캡슐 문의</div>
    </div>
    <hr />
    <br /><br />
    <div class="pcmc2">
      Q: 에스프레소캡슐과 브루커피캡슐의 차이는 무엇인가요?
    </div>
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-05-15</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcps">
            <strong
              >A: (Espresso Capsule) - 고압, 고열로 빨리 추출하는
              커피캡슐입니다. <br />(Brew Capsule)- 저압, 저열로 천천히 추출하는
              커피캡슐입니다.
            </strong>
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
