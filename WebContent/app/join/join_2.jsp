<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>휴대폰 본인 확인</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/join2.css">
</head>

<body>
	<div class="wrap">
		<div class="phone_title">
			<strong>휴대폰 본인 확인</strong>
		</div>
		<p>원활한 서비스 제공을 위해, 휴대폰 번호를 입력해주세요.</p>
		<form name="phone_prove" method="post"
			action="${cp}/login/loginPhoneProve.us">

			<div class="Pnum_box">
				<div id="sendCode">
					<strong class="bold">휴대폰 번호</strong>
					<section>
						<div class="Wtext">
							<input id="phone_num" name="user_phone" type="tel" minlength="10"
								maxlength="11">
							<button type="button" class=" btn_checked1" id="click_btn"
								onclick="sendcode(); sendcode2();" disabled="disabled">인증번호
								전송</button>
							<!-- smsClass 로 value값을 user_phone 으로 넘겨서 실행 -->
							<input type="hidden" id="phone_num_1" name="user_phone_1"
								value="">
						</div>
					</section>
				</div>
				<div class="Prove_box">
					<strong class="bold2">인증번호</strong>
					<div class="Wnum">
						<input id="prove_num" type="tel" minlength="4" maxlength="4"
							autocomplete="off">
						<!-- code_num 과 적은 value 값이 같은지 확인 -->
						<button type="submit" class="btn_checked2" id="click_btn"
							disabled="disabled" onclick="check_code()">확인</button>
						<div class="time">
							<span id="timer" class="timer">3:00</span>
						</div>
						<div class="warytxtbox">
							<span class="warytxt"></span>
						</div>
					</div>
				</div>
			</div>

		</form>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/join2.js"></script>

<script>

//인증번호 받기 버튼 누르면 인증하는 박스 활성화



function sendcode(){
$("#prove_num").attr("disabled",false);
var user_phone = $('#phone_num').val();
// 인증번호 받기 누르면 타이머 스타트, 버튼 이름 재전송으로 바꾸기

const modifyT = document.querySelector(".btn_checked1");

    $('.Prove_box').css('display','block');
    $('.btn_checked1').attr("disabled", true);
    $('#phone_num').attr("disabled", true);
    $('#prove_num').attr("disabled", false);
    modifyT.innerHTML="재전송";

//타이머

var time = 179; // 기준시간 3분 (180/60 =3)
var min = ""; // 분
var sec = ""; // 초

var x = setInterval(function(){
    min = parseInt(time/60); // 3분
    sec = time%60; //나머지 초

    document.getElementById("timer").innerHTML = min +":"+sec; // 3:00
    time--;

    //타임아웃 시
    if(time<0){
        clearInterval(x); //setInterval() 실행을 끝내기
        document.getElementById("timer").innerHTML = "0:00"
        $('.btn_checked1').attr("disabled", false);
        $('#prove_num').attr("disabled", true);


        }
    },1000)
}
	

</script>

<script>
   function sendcode2(){
         const xhr = new XMLHttpRequest();
         const phone_num = document.getElementById("phone_num");
         const cp = "${cp}";
         console.log(phone_num.value);


         xhr.onreadystatechange = function(){
            console.log("5-4");
            if(xhr.readyState == 4){
               if(xhr.status == 200){
                  let txt = xhr.responseText;
                  txt = txt.trim();
                  if(txt == 'O'){
                     alert("인증번호 전송이 완료되었습니다.")
                     
                  }
                  else if(txt == 'X') {
                     alert("인증번호 전송을 다시 확인해 주세요.")
                  }
               }
            }
         }
         xhr.open("GET",cp +"/user/phone_numChack.us?phone_num="+phone_num.value);
         xhr.send();   
   };

   function check_code(){
	    /* 유효성 검사 */
	    const xhr = new XMLHttpRequest(); 
	     const prove_num = document.getElementById("prove_num");
	      const cp = "${cp}";
	     console.log(prove_num.value);

	   xhr.onreadystatechange = function(){
	         console.log("5-5");
	         if(xhr.readyState == 4){
	            if(xhr.status == 200){
	               let txt = xhr.responseText;
	               txt = txt.trim();
	               if(txt == 'O'){
	                  alert("휴대전화 인증이 완료되었습니다.")
	                 
	                  
	               }
	               else if(txt == 'X') {
	                  alert("인증번호가 일치하지 않습니다.")
	                  location.reload();
	               }
	            }
	         }
	      }
	      xhr.open("GET",cp+"/user/prove_numChack.us?prove_num="+prove_num.value);
	      xhr.send();
	      
	}

</script>

</html>