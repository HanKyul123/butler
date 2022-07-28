<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="join3.css">
</head>
<body>
    
    <form id="joinForm" action="" onsubmit="return sendall()">
            <div class="wrap">

                <div class="logo">
                   <a href="front_main.html"><img src="./img/Hotel_width_logo.png" title="Butler 호텔" ></a> 
                </div>

                <div class="title"><strong class="join_title">회원가입</strong></div>
        
                <div class="join">
                    <div class="sub_title">이메일 아이디</div>
                    <div class="email_box">
                        <input type="text" name="email" id="all" placeholder="이메일을 입력해주세요." class="email_I"  autocomplete="off">
                        <div class="txt"><span id="email_txt"></span></div>
                    </div>
        
                    <div class="sub_title">비밀번호</div>
                    <div class="pw">
                        <input type="password" name="pw" placeholder="비밀번호를 입력해주세요." id="all_pw" class="pw_I">
                        <div class="txt"><span id="pw_txt"></span></div>
                    </div>
        
                    <div class="sub_title">비밀번호 확인</div>
                    <div class="re_pw">
                        <input type="password" name="re_pw" placeholder="비밀번호를 재입력해주세요." id="all_pw" class="re_pw_I">
                        <div class="txt"><span id="re_pw_txt"></span></div>
                    </div>
        
                    <div class="sub_title"b>닉네임</div>
                    <div class="inp_type_2 form-errors btn-add">
                        <input type="text" id="all" name="nick" class="nick_I"  maxlength="14" placeholder="닉네임을 입력하세요.">
                        <div class="txt"><span id="nick_txt"></span></div>
                    </div>
        
                    <button type="submit" class="sub_btn" onclick="sendall()">가입하기</button>
                </div>
            </div>
            </form>

    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="join.js"></script>
</html>