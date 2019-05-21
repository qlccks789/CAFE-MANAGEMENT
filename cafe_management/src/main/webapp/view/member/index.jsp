<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <%@ include file="../include/include_style.jsp" %>
    <title>CAFE MANAGEMENT</title>
  </head>
  <body>
    <%@ include file="../include/header.jsp" %>
    <main>
      <div class="container">
        <section class="main-product">
        </section>
      </div>
      <div class="container">
        <section class="main-board">
          <div class="main-board__review">
            <div class="main-board__review-table">
              <div class="main__table-title">
                <a href="#">후기</a>
              </div>
              <div class="main__table main__table-content">
                <table>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                  </tr>
                <c:forEach var="review" items="${reviewlist}" varStatus="status" begin="0" end="5">
                  <tr>
                    <td>${status.count}</td>
                    <td><a href="/cafe_management/view/cafe/review-detail.do?no=${review.reviewNo}">${review.name}</a></td>
                    <td><fmt:formatDate pattern = "yy/MM/dd hh:mm" value = "${review.regDate}" /></td>
                  </tr>
                </c:forEach>
                </table>
              </div>
            </div>
          </div>
          <div class="main-board__enquiry">
            <div class="main-board__enquiry-table">
              <div class="main__table-title">
                <a href="pc_index.html">상품문의</a>
              </div>
              <div class="main__table main__table-content">
                <table>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                  </tr>
                <c:forEach var="inquire" items="${inquirelist}" varStatus="inqstatus" begin="0" end="5">
                  <tr>
                    <td>${inqstatus.count}</td>
                    <td>${inquire.title}</td>
                    <td><fmt:formatDate pattern = "yy/MM/dd hh:mm" value = "${inquire.regDate}" /></td>
                  </tr>
                </c:forEach>
                  
                </table>
              </div>
            </div>
          </div>
        </section>
      </div>
    </main>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
    <script>
	    let flag = <%= request.getParameter("loginoutflag") %>;
		if(flag === 1){
			alert("로그아웃되었습니다.");
			
		};
		flag = <%= request.getParameter("loginflag") %>;
		if(flag ===1){
			alert("로그인에 성공하셨습니다.");
		};
		flag = <%= request.getParameter("signupflag") %>;
		if(flag === 1){
			alert("회원가입되었습니다.\n로그인을 진행하세요.");
		};
		$.ajax({
			url: "/cafe_management/view/member/maingoods.do",
			dataType: "json",
			success: function (list) {
				let result = "";
				for (let goods of list) {
					result += "<div class='main-product__grid'><div class='grid-block'><span class='main-product__content'>"+goods.title+"</span></div></div>";
				}
				$(".main-product").html(result);	
				for(let i=0;i<6;i++){
					$(`.main-product .main-product__grid:nth-child(`+(i+1)+")").css('background-image',"url(/cafe_management/resources/images"+list[i].goodsImage[0].path+"/"+list[i].goodsImage[0].sysname+")");
				}
			}
		});
    </script>
  </body>
</html>
