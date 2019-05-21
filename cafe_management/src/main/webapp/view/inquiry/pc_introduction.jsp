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
      <div class="pcmc">고객센터</div>
    </div>
    <hr />
    <br /><br />
    <table class="pctable">
      <tr class="pc_tr">
        <td class="pctd5">2018-05-31</td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcinfomation">
            <strong
              >&nbsp;&nbsp;상품 이용시 불편사항 및 상품주문 및 예약 등 궁금하신
              사항을 문의해주세요.&nbsp;&nbsp;[고객센터: 1688-4666]
            </strong>
          </p>
        </td>
      </tr>
      <tr class="pc_tr">
        <td class="pctd">
          <p class="pcinfomation">
            &nbsp;&nbsp;PS) 카페등록, 카페후기, 가까운 매장찾기, 매장칭찬 등은
            카페후기 링크를 이용하시기 바랍니다.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            아래링크를 눌러주세요 => &nbsp;<a
              href="review-main.html"
              class="pc_rev"
              >(카페후기)</a
            >
          </p>
        </td>
      </tr>
    </table>

    <br /><br />
    <hr />
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
