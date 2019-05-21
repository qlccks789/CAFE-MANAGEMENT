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
    <div class="pcmc2">Q: 캡슐이 뚫리지 않아 추출이 불가합니다.</div>
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-04-12</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcps">
            <strong
              >A: 캡슐 뒤를 뚫어주는 기기내 부품이 장기간 사용하시거나 <br />
              많은 캡슐을 추출했을 때 마모되어 뚫리지 않는 경우가
              있습니다.</strong
            >
          </p>
        </td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcp">PS) 소모품이므로 A/S를 통해 교환이 필요합니다.</p>
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
