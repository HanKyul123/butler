<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴대폰 본인 확인</title>
    <link rel="stylesheet" href="join2.css">
</head>
<body>
    <div class="wrap">
            <div class="phone_title">
                <strong>휴대폰 본인 확인</strong>
            </div>
            <p>원활한 서비스 제공을 위해, 휴대폰 번호를 입력해주세요.</p>
            <div class="Pnum_box">
                <div id="sendCode">
                    <strong class="bold">휴대폰 번호</strong>
                    <section>
                        <div class="Wtext">
                            <input id="inputall" type="tel" class="phone_num" minlength="13" maxlength="13" autocomplete="off">
                            <button type="button" class=" btn_checked1"  id="click_btn" disabled="disabled" onclick="sendcode()">인증번호 전송</button> 
                        </div>
                    </section>
                </div>
                <div class="Prove_box">
                    <strong class="bold2">인증번호</strong>
                    <div class="Wnum">
                        <input id="inputall" type="text" class="prove_num" minlength="4" maxlength="4" autocomplete="off">
                        <a href="join3.jsp"><button type="submit" class="btn_checked2" id="click_btn" disabled="disabled">확인</button></a> 
                        <div class="time"><span id="timer" class="timer">3:00</span></div>
                    </div>
                </div>
            </div>
    </div>
    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="join_3.js"></script>
</html>