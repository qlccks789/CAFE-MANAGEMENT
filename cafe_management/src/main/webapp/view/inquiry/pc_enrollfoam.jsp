<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<%@ include file="../include/include_style.jsp"%>
<title>Document</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<form action="pc_enroll.do" method="post" name="inqForm"
		class="pc_forms">
		<div class="pcsummary">상품 문의 등록</div>
		<hr class="enrollhr" />
		<table class="pccommt">
<!-- 			<tr> -->
<!-- 				<th class="pcth2">문의번호</th> -->
<!-- 				<td class="pctd2"><input type="text" name="inqno" /></td> -->
<!-- 			</tr> -->

			<tr>
				<th class="pcth2">제목</th>
				<td class="pctd2"><input type="text" name="title" /></td>
			</tr>

			<tr>
				<th class="pcth2">분류</th>
				<td class="pctd2">
					<select name="classify">선택
                        	<option value="0"> 선택하세요 </option>
                        	<option value="1"> 에스프레소머신 </option>
                        	<option value="2"> 에스프레소캡슐 </option>
                        	<option value="3"> 텀블러 </option>
                     </select>
				 </td>
			</tr>
			<tr>
				<th class="pcth2">상품번호</th>
				<td class="pctd2"><input type="text" name="goods_no" /></td>
			</tr>
			<tr>
				<th class="pcth3">내용</th>
				<td class="pctd3"><textarea name="content" rows="25" cols="100"
						class="pc_textarea"></textarea></td>
			</tr>
		</table>
		<hr>
		<br>
		<br>
		<br>
		<br>
		<div class="pcwsubd">
		<button id="inqadd"><a href="pc_index.do"> 취소하기</a></button>   
			&nbsp; &nbsp; &nbsp;
		<button type="submit" id="inqadd">등록하기</button>
		</div>
		<!-- 
		<div class="pcwsubd">
			<th class="pcwsub" id="inqremove"><button type="submit">취소하기</button></th>
			&nbsp; &nbsp; &nbsp;
			<th class="pcwsub"><button type="submit" id="inqadd">등록하기</button></th>
		</div>
		 -->
	</form>
	<br />
	<hr />
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	    <script>
    	$("form").submit(function checkform() {
    		
    		var inq_no = document.inqForm.inq_no;
    		var title = document.inqForm.title;
//    		var sort = document.inqForm.sort;
    		var goods_no= document.inqForm.good_no;
    		var content = document.inqForm.content;
    		
    		var notnull = [inq_no, title, goods_no, content]
    		
    		if (isEmpty(inq_no, "문의번호를 입력하세요.")) return false;
    		if (isEmpty(title, "제목을 입력하세요.")) return false;
//   		if (isZero(sort, "상품 분류를 선택하세요")) return false;
    		if (isEmpty(goods_no , "상품번호를 입력하세요.")) return false;
    		if (isEmpty(content, "내용을 입력하세요.")) return false;
    		
    		function isEmpty(ele, msg) {
    			if (ele.value == "") {
    				alert(msg);
    				ele.focus();
    				return true;
    			}
    			return false;
    		}
    	}	
    		
//     		function isZero(ele, msg) {
//     			if (ele.value == 0) {
//     				alert(msg);
//     				ele.focus();
//     				return true;
//     			}
//     			return false;
//     }
 </script>
	<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
