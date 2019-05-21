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
    <div class="pcmc2">
      Q: 19 Cherry blossom floating coldcup 473ml는 가격이 얼마인가요?
    </div>
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-08-20</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcps">
            <strong>A: 문의하신 상품의 가격은 22000원입니다.</strong>
          </p>
        </td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcp">
            PS) 카페 우수회원은 30%할인된 가격으로 구매가능합니다.
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
