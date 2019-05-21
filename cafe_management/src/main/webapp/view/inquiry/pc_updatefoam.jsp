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
    <form
      action="pc_update.do"
      method="post"
      name="mainForm"
      encType="multipart/form-data"
      class="pc_forms"
    >
     <div class="pcsummary">상품 문의 수정</div>
      <hr class="enrollhr" />
      <table class="pccommt">
        <tr>
          <th class="pcth2">문의번호</th>
          <td class="pctd2"><input type="text" name="inqno" value="${inquire.inqNo}"/></td>
        </tr>
        <tr>
          <th class="pcth2">제목</th>
          <td class="pctd2"><input type="text" name="title" vlaue="${inquire.title}"/></td>
        </tr>

        <tr>
          <th class="pcth2">분류</th>
          <td class="pctd2">&nbsp;&nbsp;
            <lavel><input name="pc_option1" type="checkbox" value="에스프레소" checked/>에스프레소 </lavel>
            <lavel><input name="pc_option2" type="checkbox" value="에스프레소 머신"/>에스프레소 머신 </lavel>
            <lavel><input name="pc_option3" type="checkbox" value="텀블러"/>텀블러 </lavel>
            <lavel><input name="pc_option3" type="checkbox" value="기타"/>기타 </lavel>
          </td>
        </tr>
        <tr>
          <th class="pcth2">상품번호</th>
          <td class="pctd2"><input type="text" name="no" value="${inquire.goods_no}"/></td>
        </tr>
        <tr>
          <th class="pcth3">내용</th>
          <td class="pctd3">
            <textarea
              name="content"
              rows="25"
              cols="100"
              class="pc_textarea"
              value="${inquire.content}"
            ></textarea>
          </td>
        </tr>
      </table>

      <hr>
      <br><br><br><br>
      <div class="pcwsubd">
        <th class="pcwsub"><button type="submit"><a href='pc_list.do'>목록</a></button></th> &nbsp;&nbsp;
        <th class="pcwsub" id="inqmodify"><button type="submit"><a href='pc_update.do'>수정</a></button></th>
      </div>
    </form>
    <br />
    <hr />
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
