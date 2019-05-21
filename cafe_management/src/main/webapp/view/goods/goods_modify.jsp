<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<%@ include file="../include/include_style.jsp"%>
<link rel="stylesheet" href="../../resources/css/goods/goods_modify.css" />
<title>CAFE MANAGEMENT</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main class="goods">
	<div class="contents">
		<div class="inner">
			<div class="modify_title">
				<p class="title_text">상품 수정</p>
			</div>
			<div class="form_area">
				<form method='post' name="gForm" action="${pageContext.request.contextPath}/view/goods/goods_modify_oper.do"
					 >
					<input type="hidden" name="nono" value="${goodsNo}" />
					<div class="item">
						<p class="font">모델명</p>
						<input type="text" name="name" class="goods_model_name"
							placeholder="모델명을 입력하세요." />
					</div>
					<div class="item">
						<!--                         <p class="font">내용 :</p>
                        <div>
                            <textarea name="content" rows="8" cols="70" placeholder="내용을 입력하세요."
                                class="textarea"></textarea>
                        </div> -->
						<p class="font">시리얼번호</p>
						<input type="text" name="serial_no" class="goods_model_name"
							placeholder="시리얼번호를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">분류</p>
						<select name="sort">
							<option value="0">선택하세요</option>
							<option value="1">에스프레소머신</option>
							<option value="2">에스프레소캡슐</option>
							<option value="3">텀블러</option>
						</select>
					</div>
					<div class="item">
						<p class="font">판매글 제목</p>
						<input type="text" name="title" class="goods_model_name"
							placeholder="판매글 제목을 입력하세요." />
					</div>
					<div class="item">
						<p class="font">가격</p>
						<input type="text" name="price" class="goods_model_name"
							placeholder="가격을 입력하세요." onkeypress="inNum()"/>
					</div>
					<div class="item">
						<p class="font">제조사</p>
						<input type="text" name="manufacturer" class="goods_model_name"
							placeholder="제조사를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">원산지</p>
						<input type="text" name="country" class="goods_model_name"
							placeholder="원산지를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">상품정보</p>
						<input type="text" name="goods_info" class="goods_model_name"
							placeholder="상품정보를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">배송정보</p>
						<input type="text" name="delivery_info" class="goods_model_name"
							placeholder="배송정보를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">교환 및 환불 안내</p>
						<input type="text" name="change_info" class="goods_model_name"
							placeholder="교환 및 환불 안내를 입력하세요." />
					</div>
					<div class="item">
						<p class="font">배송비</p>
						<input type="text" name="delivery_price" class="goods_model_name"
							placeholder="배송비를 입력하세요." onkeypress="inNum()" />
					</div>
					<div class="item">
						<p class="font">재고</p>
						<input type="text" name="stack" class="goods_model_name"
							placeholder="입고 수량을 입력하세요." onkeypress="inNum()" />
					</div>
				<!-- 	<div class="item">
						<p class="font">(대표)이미지 첨부</p>
						<input type="file" name="file_attach" class="file_attach" />
					</div>
					<div class="item">
						<p class="font">이미지 첨부</p>
						<input type="file" name="file_attach2" class="file_attach" />
					</div> -->
					<div class="goods_insert_button">
						<button class="btn_insert">수정</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</main>
	<%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script>
		$("form").submit(function () {	
    		console.log(Number(document.gForm.price.value));
    	
    		var name = document.gForm.name;
    		var serial_no = document.gForm.serial_no;
    		var sort = document.gForm.sort;
    		var title = document.gForm.title;
    		var price = document.gForm.price;
    		var manufacturer = document.gForm.manufacturer;
    		var country= document.gForm.country;
    		var goods_info= document.gForm.goods_info;
    		var delivery_info= document.gForm.delivery_info;
    		var change_info= document.gForm.change_info;
    		var delivery_price= document.gForm.delivery_price;
    		var stack= document.gForm.stack;
    		var file_attach= document.gForm.file_attach;
    		
    		var notnull = [name, serial_no, title, sort, price, country, stack]
    		
    		if (isEmpty(name, "모델명을 입력하세요.")) return false;
    		if (isEmpty(serial_no, "시리얼번호를 입력하세요.")) return false;
    		if (isZero(sort, "제품 분류를 선택하세요")) return false;
    		if (isEmpty(title, "판매명을 입력하세요.")) return false;
    		if (isEmpty(price, "가격을 입력하세요.")) return false;
    		if (isEmpty(country, "원산지를 입력하세요.")) return false;
    		if (isEmpty(stack, "재고를 입력하세요.")) return false;
    		
    		function isEmpty(ele, msg) {
    			if (ele.value == "") {
    				alert(msg);
    				ele.focus();
    				return true;
    			}
    			return false;
    		}
    		
    		function isZero(ele, msg) {
    			if (ele.value == 0) {
    				alert(msg);
    				ele.focus();
    				return true;
    			}
    			return false;
    		}
    		
    		
    	});
    		function inNum(){
  			  if(event.keyCode<48 || event.keyCode>57){
  			     event.returnValue=false;
  			  }
  			}
    </script>
    <script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
