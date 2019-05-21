<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="../include/include_style.jsp"%>
<script src="../../resources/js/member/addr.js"></script>
<title>CAFE MANAGEMENT</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main>
	<section class="main-body__signup">
		<div class="container">
			<div class="login">
				<form action="signup.do" name="signupForm" id="signupForm" onsubmit="return allCheck()">
					<div class="login-box">
						<div class="login-box__main-title">Sign up for Cafe
							Management</div>
						<div class="login-box__title">
							Id <span>(email 형식)</span>
						</div>
						<div class="login-box__input login-box__email">
							<input type="text" class="login-input"
								placeholder="ex)kyuxxxx@gmail.com" name="id" id="id"/>
							<button type="button" class="signup-btn"> 중복확인 </button>
							<input type="hidden" name="emailCheck" id="emailCheck" value="0">
						</div>
						<div class="login-box__title">Password</div>
						<div class="login-box__input">
							<input type="password" class="login-input"
								placeholder="숫자,영문,특수문자 8자이상을 입력해주세요." name="pass" id="pass" />
						</div>
						<div class="login-box__input">
							<input type="password" class="login-input"
								placeholder="password를 다시 입력해주세요" name="repass" id="repass"/>
						</div>
						<div class="login-box__title">Nickname</div>
						<div class="login-box__input">
							<input type="text" class="login-input" name="nickname" id="nickname"/>
						</div>
						<div class="login-box__title">name</div>
						<div class="login-box__input">
							<input type="text" class="login-input" name="name" id="name"/>
						</div>
						<div class="login-box__title">
							Cellphone <span>ex)010-3255-8888</span>
						</div>
						<div class="login-box__input">
							<input type="text" class="login-input"
								placeholder="ex)010-3255-8888" name="phone" id="phone"/>
						</div>
						<div class="login-box__title login-zipcode">
                  		    Address<br>
                		    <input type="text" class="login-input zipcode-items"  placeholder="우편번호" id="zipNo"  name="zipNo"/>
                    		<input type="button" onclick="goPopup();" class="address-btn zipcode-items" value="우편번호 검색"/>
                    		<input type="hidden" name="zipcodeCheck" id="zipcodeCheck" value="0">
		                </div>
		                <div class="login-box__input login-box__address">
                  		    <span class="address-text">도로명주소</span><textarea rows="2" class="login-input address-basic" placeholder="기본주소"  id="roadAddrPart1"  name="roadAddrPart1" ></textarea>
		                </div>
		                <div class="login-box__input login-box__address" >
		                    <span class="address-text">상세주소</span><input type="text" class="login-input" placeholder="상세주소" id="addrDetail"  name="addrDetail"/>
		                </div>
						<div class="login-box__btn">
							<button>Sign up</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	</main>
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
	<script src="../../resources/js/member/signup.js"></script>
</body>
</html>
