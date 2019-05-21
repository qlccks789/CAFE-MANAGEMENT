<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <%@ include file="../include/include_style.jsp" %>
    <title>문의 답변</title>
  </head>
  <body>
   <%@ include file="../include/header.jsp" %>
    <form
      action="proc.jpg"
      method="post"
      name="mainForm"
      encType="multipart/form-data"
      class="pc_forms"
    >
     <div class="pcsummary">문의 답변</div>
      <hr class="enrollhr" />
      <table class="pccommt">
        <tr>
            <th class="pcth2">상품명</th>
            <td class="pctd2"><input type="text" name="postfront" size="20">&nbsp;&nbsp;&nbsp;
            <lavel><input name="pc_option1" type="checkbox" value="에스프레소" checked/>에스프레소 </lavel>
            <lavel><input name="pc_option2" type="checkbox" value="에스프레소 머신"/>에스프레소 머신 </lavel>
            <lavel><input name="pc_option3" type="checkbox" value="텀블러"/>텀블러 </lavel>
            <lavel><input name="pc_option3" type="checkbox" value="기타"/>기타 </lavel>
        </tr>
        <tr>
          <th class="pcth3">답변 내용</th>
          <td class="pctd3">
            <textarea
              name="content"
              rows="25"
              cols="100"
              class="pc_textarea"
            ></textarea>
          </td>
        </tr>
      </table>

      <hr>
      <br><br><br><br><br><br>
      <div class="pcwsubd">
        <th class="pcwsub"><button type="submit">수정하기</button></th>
        &nbsp; &nbsp; &nbsp;
        <th class="pcwsub"><button type="submit">제출하기</button></th>
      </div>
    </form>
    <br />
    <hr />
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
