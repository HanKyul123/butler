<%@page import="com.butler.app.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/join3.css">
</head>
<body>    
      <form id="joinForm" method="post" action="/user/join.us">
              <div class="wrap">

                <div class="logo">
                   <a href=""><img class="logo_img" src="${pageContext.request.contextPath}/img/Hotel_width_logo.png" title="Butler 호텔" ></a>
                </div>

                <div class="title"><strong class="join_title">회원가입</strong></div>
        
                <div class="join">
                    <div class="sub_title">✉️이메일 아이디</div>
                        <div class="email_box">
                            <div class="checkbox"> 
                                <input type="text" name="email" class="user_email" id="all" placeholder="이메일을 입력해주세요." class="email_I"  autocomplete="off" onkeyup="checkemail(this.value)">

                                <div class="checking">
                                    <button class="EC" type="button" onclick="checkemailok()">중복확인</button>
                                </div>
                            </div>
                        <div class="txt"><span id="email_txt"></span></div>
                    </div>

                    <div class="name_box">
                        <div class="sub_title">📋이름</div>
                        <input type="text" name="user_name" id="all" placeholder="이름을 입력해주세요." class="name_I" autocomplete="off" onkeyup="checkname(this.value)">
                        <div class="txt">
                            <span id="name_txt"></span>
                        </div>
                    </div>
        
                    <div class="sub_title">🔒비밀번호</div>
                    <div class="pw">
                        <input type="password" name="pw" placeholder="비밀번호를 입력해주세요." id="all_pw" class="pw_I" onkeyup="checkpw(this.value)">
                        <div class="txt"><span id="pw_txt"></span></div>
                    </div>
        
                    <div class="sub_title">🔒비밀번호 확인</div>
                    <div class="re_pw">
                        <input type="password" name="re_pw" placeholder="비밀번호를 재입력해주세요." id="all_pw" class="re_pw_I" onkeyup="checkrepw(this.value)">
                        <div class="txt"><span id="re_pw_txt"></span></div>
                    </div>
        
                    <div class="sub_title">😎닉네임</div>
                   <div class="inp_type_2 form-errors btn-add">
                        <div class="checkbox">
                             <input type="text" id="all" name="nick" class="nick_I"  maxlength="14" placeholder="닉네임을 입력하세요." onkeyup="checknick(this.value)" autocomplete="off">
                            <div class="checking">
                                <button class="EC" type="button" onclick="checknicknameok()">중복확인</button>
                            </div>
                        </div>
                        <div class="txt"><span id="nick_txt"></span></div>
                    </div>

                    <div class="sub_title">🏠주소</div>

                    <div class="zipcode_area">
                        <input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode" readonly>
                         <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"  class="UP_btn">
                    </div>
                    

                   
                    <div class="addr_area">
                        <input type="text" id="sample6_address" placeholder="주소" name="addr" readonly>
                    </div>

                     <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addrdetail" autocomplete="off" onkeyup="checkaddr(this.value)">
                    <div class="txt"><span id="addr_txt"></span></div>


					<input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addretc" readonly>
        
                    <button type="submit" class="sub_btn">가입하기</button>
                </div>
            </div>
            </form>

    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src = "${pageContext.request.contextPath}/js/join3.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script>
function checknicknameok(){
   const xhr = new XMLHttpRequest();
   const result = document.getElementById("nick_txt");
   const user_nickname = document.getElementsByClassName('nick_I');
   const cp = "${cp}";
   console.log(user_nickname[0].value);
   
   if(user_nickname[0].value == ""){
      console.log("tlqkf")
      alert("닉네임을 입력하세요!")
      return false;
   }
   
   xhr.onreadystatechange = function(){
      console.log("5-4");
      if(xhr.readyState == 4){
         if(xhr.status == 200){
            let txt = xhr.responseText;
            txt = txt.trim();
            if(txt == 'O'){
               alert("사용가능한 닉네임입니다.")
            }
            else if(txt == 'X') {
               alert("중복된 닉네임입니다.")
            }
         }
      }
   }
   xhr.open("GET",cp+"/user/checknicknameok.us?user_nickname="+user_nickname[0].value);
   xhr.send();
}
</script>

<script>
function checkemailok(){
   const xhr = new XMLHttpRequest();
   const result = document.getElementById("email_txt");
   const user_email = document.getElementsByClassName('user_email');
   const cp = "${cp}";
   console.log(user_email[0].value);
   
   if(user_email[0].value == ""){
      console.log("tlqkf")
      alert("아이디를 입력하세요!")
      return false;
   }
   
   xhr.onreadystatechange = function(){
      console.log("4-4");
      if(xhr.readyState == 4){
         if(xhr.status == 200){
            let txt = xhr.responseText;
            txt = txt.trim();
            if(txt == 'O'){
               alert("사용가능한 이메일입니다.")
            }
            else if(txt == 'X') {
               alert("중복된 이메일입니다.")
            }
         }
      }
   }
   xhr.open("GET",cp+"/user/checkemailok.us?user_email="+user_email[0].value);
   xhr.send();
}   
   
</script>

</html>