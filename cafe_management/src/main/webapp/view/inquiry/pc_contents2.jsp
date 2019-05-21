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
    <div class="pcmc2">Q: 커피 추출시 머신 바닥으로 물이 새요?</div>
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-04-12</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcps">
            <strong>A: 물통과 머신의 접합상태를 체크해주세요.</strong>
          </p>
        </td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcp">
            PS) 문제가 없는 경우 머신 뒷부분 물통 접합 부분의 고무가 찢어졌거나
            펌프가 오래되어 삭았거나 깨졌을 수 있습니다.
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
