$("#emailCheck").attr('value',0);
$("#zipcodeCheck").attr('value',0);
function allCheck() {
	const form = document.signupForm;

	 // ID 이메일 형식인지 확인할 것!
	 // 이메일인지 확인한 후 이메일 임시번호해서 보내기!
	 if (isEmpty(form.id, "id를 입력해주세요")){
		 return false;
	 }else {
		 if($("#emailCheck").val() == 0){
			 alert('id 중복검사를 해주세요 ');
			 return false;
		 }
	 }
	 if (isEmpty(form.pass, "비밀번호를 입력해주세요"))return false;
	 // 비밀번호 영문+숫자+특수문자 확인!
	 if(!checkPassword(form.pass.value))return false; 
	 
	 if (isEmpty(form.repass, "비밀번호확인을 입력해주세요"))return false;
	
	 if (form.pass.value != form.repass.value) {
		 form.repass.value = "";
		 form.pass.select();
		 alert("비밀번호가 일치하지 않습니다.");
		 return false;
	 }
	 if (isEmpty(form.nickname, "nickname을 입력해주세요"))return false;
	 if (isEmpty(form.name, "이름을 입력해주세요"))return false;
	 if (!isCellPhone(form.phone.value)){
		 alert("잘못된 휴대폰 번호입니다.\n주어진 폰번호 형식으로 입력해주세요.")
		 return false;
	 }
	 //roadAddrPart1 addrDetail zipNo
	 if($("#zipcodeCheck").val() == 0){
		 alert('우편번호를 검색해주세요');
		 return false;
	 }else{
		 if($("#roadAddrPart1").val()=="" || $("#addrDetail").val()=="" || $("#zipNo").val()==""){
			 console.log($("#roadAddrPart1").val()=="");
			 console.log($("#addrDetail").val()=="");
			 console.log($("#zipNo").val()=="");
			 alert('주소를 입력해주세요.');
			 return false;
		 }
	 }
	 return true;
}

function isEmpty(ele, msg) {
	if (ele.value == "") {
		alert(msg);
		ele.focus();
		return true;
	}
	return false;
}


//2가지 휴대전화 표현중에 하나만 택하기 
function isCellPhone(p) {

//	p = p.split('-').join('');
//
//	const regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
//
//	return regPhone.test(p);
	const phonenum = $('#phone').val();
	const regPhone = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
	if(!regPhone.test(phonenum)){
		$('#phone').select();
		return false;    
	}
	return true;
}

function replaceAll(str, searchStr, replaceStr) {
    return str.split(searchStr).join(replaceStr);
}

// 이메일 정규표현식으로 확인!
$('.main-body__signup .signup-btn').click(function(){
  $("#emailCheck").attr('value',1);
  const emailVal = $(".main-body__signup .login-box__email .login-input").val();
  console.log(emailVal);
  const regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  // 검증에 사용할 정규식 변수 regExp에 저장
  console.log(emailVal.match(regExp));
  if (emailVal.match(regExp) == null) {
    alert('id는 이메일형식으로 입력해야 합니다.');
  }else{
	  // 이메일과 중복이 되는지 확인!
	  $.ajax({
			type: "POST",
			url: "emailcheck.do",
			data: "id="+emailVal,
			success: function (result) {
				alert(result);
			}
	  });
  };
});

function checkPassword(password){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(password)){            
        alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
        $('#pass').val('').focus();
        return false;
    }    
    var checkNumber = password.search(/[0-9]/g);
    var checkEnglish = password.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
        alert("숫자와 영문자를 혼용하여야 합니다.");
        $('#pass').val('').focus();
        return false;
    }
    if(/(\w)\1\1\1/.test(password)){
        alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
        $('#pass').val('').focus();
        return false;
    }
    return true;
}


//$('.emailcheck-btn').click(function() {
//	$.ajax({
//		url : 'emailCheck.do',
//		type : 'post',
//		data : {id : $('.main-body__signup #id').value},
//		success : function(data) {
//			if (data === null) {
//				alert("사용가능한 email입니다.");
//			} else {
//				alert("이미 사용중인 email입니다.");
//			}
//		}
//	});
//});


