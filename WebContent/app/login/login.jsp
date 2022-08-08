<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">

    <title>로그인</title>
</head>
<body id="login_view">
    <div id="loginbox">

        <div><a href="../../index.jsp"><img src="${pageContext.request.contextPath}/img/Hotel_width_logo.png" class="icon" alt=""></a></div>
        <div id="getidfrom" class="kakao">
            카카오톡으로 로그인
        </div>
        <div id="getidfrom" class="facebook">
            Facebook으로 로그인
        </div>
        <div id="getidfrom" class="naver">
            네이버로 로그인
        </div>
        <div class="line">
             &nbsp; 또는 &nbsp;
        </div>
        <div class="writeid" id="writeid">
            <input type="text" name="id" class="id" id="userid "placeholder="아이디" class="em" autocomplete="off" onkeyup="checkid(this.value)">       
        	<span id="iderror_message" class="iderror_message">이메일주소를 입력하세요.</span>  
        </div>
        <div class="writepw" id="writepw">
        	<input type="password" name="password" placeholder="비밀번호" class="pw"> 
        </div>
       
        <input class="loginbtn" type="submit" value="로그인">

        <div class="find">
            <div id="fj" class="findpw"><a href="">비밀번호 찾기</a></div>
            <div id="fj" class="join"><a href="/join1.us">회원가입</a></div>
        </div>

    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginForm.js"></script>
</html>