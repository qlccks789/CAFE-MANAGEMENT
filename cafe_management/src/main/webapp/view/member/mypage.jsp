<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div class="mypage">
        <div class="container">
          <div class="mypage-main">
            <div class="mypage-header"><a href="/cafe_management/view/member/mypage.jsp">My page</a></div>
            <div class="mypage-body">
              <aside class="mypage-sidebar">
                <span>${sessionScope.user.name}님의 Mypage</span>
                <ul class="sidebar__list">
                  <li class="sidebar__list-content">회원정보</li>
                  <li class="sidebar__list-content">My 후기글</li>
                  <li class="sidebar__list-content">My 상품구매내역</li>
                  <li class="sidebar__list-content">My 상품문의</li>
                </ul>
              </aside>
              <section class="mypage-section">
                <header class="mypage-section__title">
                  회원 기본정보
                </header>
                
              </section>
            </div>
          </div>
        </div>
      </div>
    </main>
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
    <script>
	    $.ajax({
			url: "/cafe_management/view/member/meminfo.do",
			dataType: "json",
			success: function (member) {
				$(".mypage-section__title").text("회원 기본정보");
				let result = `<div class='mypage-section__meminfo'>
				<table class="mypage__meminfo-table">
				<tr>
	              <td>회원아이디</td>
	              <td>`+member.id+`</td>
	            </tr>
	            <tr>
	              <td>이름<sub>(name)</sub></td>
	              <td>`+member.name+`</td>
	            </tr>
	            <tr>
	              <td>닉네임<sub>(nickname)</sub></td>
	              <td>`+member.nickname+`</td>
	            </tr>
	            <tr>
	              <td>phone</td>
	              <td>`+member.phone+`</td>
	            </tr>
	            <tr>
	              <td>address</td>
	              <td>`+member.basicAddr+member.detailAddr+`</td>
	            </tr>
	          </table>
	
	          <div class="meminfo-btn">
	            <button>수정</button>
	          </div>`;
				$(".mypage-section").append(result);
			}
		});
    	$(".sidebar__list-content:nth-child(1)").click(function(){
    		console.log("1");
  			
    		$.ajax({
    			url: "/cafe_management/view/member/meminfo.do",
    			dataType: "json",
    			success: function (member) {
    				let result = `<div class='mypage-section__meminfo'>
    				<table class="mypage__meminfo-table">
    				<tr>
    	              <td>회원아이디</td>
    	              <td>`+member.id+`</td>
    	            </tr>
    	            <tr>
    	              <td>이름<sub>(name)</sub></td>
    	              <td>`+member.name+`</td>
    	            </tr>
    	            <tr>
    	              <td>닉네임<sub>(nickname)</sub></td>
    	              <td>`+member.nickname+`</td>
    	            </tr>
    	            <tr>
    	              <td>phone</td>
    	              <td>`+member.phone+`</td>
    	            </tr>
    	            <tr>
    	              <td>address</td>
    	              <td>`+member.basicAddr+member.detailAddr+`</td>
    	            </tr>
    	          </table>
    	
    	          <div class="meminfo-btn">
    	            <button>수정</button>
    	          </div>`;
    	          	$(".mypage-section").html($(".mypage-section__title").text("회원 기본정보"));
    				$(".mypage-section").html($(".mypage-section").html()+result);
    	      		
    			}
    		});
    	});
    	$(".sidebar__list-content:nth-child(2)").click(function(){
    		console.log("2");
    		$.ajax({
    			url: "/cafe_management/view/member/memreview.do",
    			dataType: "json",
    			success: function (list) {
    				console.log(list.length,"length");
    				if(list.length == 0){
    					// null 페이지 뜨게  하기!
    					$(".mypage-section").html(`<div class="mypage-section__null">
    	                  <span class="secton-null__content">해당 내용이 존재하지 않습니다.</span>
    	                </div>`);
    					return;
    				}
    				let result = "";
    				result +=`<table class="mypage-table">
                        <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>날짜</th>
                      </tr>`;
                    let count = 1;
                    for(let review of list){
                    	console.log(list);
                    	console.log(list.length,"length");
                    	let d = new Date();
                    	d = new Date(review.regDate);
                    	let date_format_str = d.getFullYear().toString()+"-"+((d.getMonth()+1).toString().length==2?(d.getMonth()+1).toString():"0"+(d.getMonth()+1).toString())+"-"+(d.getDate().toString().length==2?d.getDate().toString():"0"+d.getDate().toString());
                    	console.log(date_format_str);
                    	result += `
                          <tr>
                          	<td>`+count+`</td>`+
                          	"<td><a href='/cafe_management/view/cafe/review-detail.do?no="+review.reviewNo+"\'>"+review.name+`</a></td>
                          	<td>`+date_format_str+`</td>
                     	  </tr>
                        `;
                        count++;
                    }
                    result +=  `</table>`;
                    $(".mypage-section").html($(".mypage-section__title").text("My 후기글 "));
                    $(".mypage-section").html($(".mypage-section").html()+result);
    			}
    		});
    	});
    	$(".sidebar__list-content:nth-child(3)").click(function(){
    		console.log("3");
    		$(".mypage-section").html(`
    		<header class="mypage-section__title">
            My 상품구매내역
          </header>
          <div class="mypage-section__membuy">
            <table class="mypage__membuy-table">
              <!-- 
                  컬럼에 들어갈 것
                  : 번호, 모델명, 주문가격, 결제일자
               -->
              <tr>
                <th>번호</th>
                <th>모델명</th>
                <th>주문가격</th>
                <th>결제일자</th>
              </tr>
              <tr>
                <td>1</td>
                <td>모델1</td>
                <td>32000</td>
                <td>19/03/23</td>
              </tr>
              <tr class="mypage-table__detail">
                  <td class="mypage-detail__content" colspan="100%">
                    <div class="detail__row">
                      <div class="detail__name">모델명</div>
                      <span>모델명1</span>
                    </div>
                    <div class="detail__row">
                      <div class="detail__name">가격</div>
                      <span>99999원</span>
                    </div>
                    <div class="detail__row">
                      <div class="detail__name">제조사</div>
                      <span>어느나라</span>
                    </div>
                    <div class="detail__row">
                      <div class="detail__name">원산지</div>
                      <span>원산지뎃</span>
                    </div>
                  </td>
                </tr>
              <tr>
                <td>2</td>
                <td>모델2</td>
                <td>300000</td>
                <td>19/04/07</td>
              </tr>`);
    	});
    	$(".sidebar__list-content:nth-child(4)").click(function(){
    		console.log("4");
    		$.ajax({
    			url: "/cafe_management/view/member/meminq.do",
    			dataType: "json",
    			success: function (list) {
    				if(list.length == 0){
    					// null 페이지 뜨게  하기!
    					$(".mypage-section").html(`<div class="mypage-section__null">
    	                  <span class="secton-null__content">해당 내용이 존재하지 않습니다.</span>
    	                </div>`);
    					return;
    				}
    				let result = "";
    				result +=`<div class="mypage-section__meminq">
    	                  <table class="mypage__meminq-table">
                        <!-- 
                            컬럼에 들어갈 것
                            : 번호, 문의 제목, 문의등록일, 
                         -->
                        <tr>
                          <th>번호</th>
                          <th>문의 제목</th>
                          <th>문의 등록일</th>
                        </tr>`;
                    let count = 1;
                    for(let inquire of list){
                    	let d = new Date();
                    	d = new Date(inquire.regDate);
                    	let date_format_str = d.getFullYear().toString()+"-"+((d.getMonth()+1).toString().length==2?(d.getMonth()+1).toString():"0"+(d.getMonth()+1).toString())+"-"+(d.getDate().toString().length==2?d.getDate().toString():"0"+d.getDate().toString());
                    	console.log(date_format_str);
                    	result += `<tr>
                            <td>`+count+`</td>`+
                            "<td><a href='/cafe_management/view/inquiry/pc_detail.do?no="+inquire.inqNo+"\'>"+inquire.title+`</a></td>
                            <td>`+date_format_str+`</td>
                          </tr>`;
                        count++;
                    }
                    result +=  `</table>
                    </div>`;
                    $(".mypage-section").html($(".mypage-section__title").text("My 상품문의 "));
                    $(".mypage-section").html($(".mypage-section").html()+result);
    			}
    		});
    	});
    </script>
  </body>
</html>
