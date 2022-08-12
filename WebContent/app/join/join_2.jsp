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
      <form name="phone_prove" method="post" action="${cp}/login/loginPhoneProve.us">
         <div class="Pnum_box">
            <div id="sendCode">
               <strong class="bold">휴대폰 번호</strong>
               <section>
                  <div class="Wtext">
                     <input id="phone_num" name="user_phone" type="tel" minlength="10" maxlength="11">
                     <button type="button" class=" btn_checked1" id="click_btn" onclick="sendcode()"  disabled="disabled">인증번호 전송</button>
                     <input type="hidden" id="phone_num_1" name="user_phone_1" value="">
                  </div>
               </section>
            </div>
            <div class="Prove_box">
               <strong class="bold2">인증번호</strong>
               <div class="Wnum">
                  <input id="prove_num" type="tel" minlength="4" maxlength="4" autocomplete="off">
                  <button type="submit" class="btn_checked2" id="click_btn" disabled="disabled">확인</button>
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
<script src = "${pageContext.request.contextPath}/js/join2.js"></script>
</html>