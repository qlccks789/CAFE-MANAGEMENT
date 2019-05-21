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
        <div class="pcmc">공지사항</div>   
     </div>
     <hr><br><br> 
     <table class="pctable">
         <tr class="pc_tr">
             <td class="pctd5">2019-03-11</td>
         </tr>
         <tr class="pc_tr">
             <td class="pctd"><p class="pcinfomation"><strong>&nbsp; - 점검시간: 2019년 03월 12일(화) 11시 ~ 20시(10시간)<br>
              &nbsp; - 점검내용: 시스템 서버 점검
            </strong></p>
             </td>
             
         </tr>
         <tr class="pc_tr">
             <td class="pctd">
                <p class="pcinfomation"> &nbsp; PS) 해당 점검 시간 중 모바일 앱 서비스 및 홈페이지가 일시 중지되는 점 양해 부탁드립니다.</p>
                
            </td>
         </tr>
        </table><br><br><hr>
    </div>
    <hr />
    <br /><br />
    
    <br /><br />
    <hr />
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
