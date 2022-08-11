<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
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

   <form name="kakao" method="post" action="${cp}/login/Kloginok.us" >   
         <div id="getidfrom" class="kakao" onclick="kakaoLogin();"> 카카오톡으로 로그인
             <input type="hidden" id="user_name" name="user_name" value="">
            <input type="hidden" id="user_email" name="user_email" value="">
        </div>
   </form>

        
        <div id="getidfrom" class="facebook">
            Facebook으로 로그인
        </div>
        <div id="getidfrom" class="naver">
            네이버로 로그인
        </div>
        <div class="line">
             &nbsp; 또는 &nbsp;
        </div>
        
        
        <form name="loginForm" method="post" action="${cp}/Login.loginok.us">   
           <div class="writeid" id="writeid">
               <input type="text" name="user_email" class="id" id="userid "placeholder="아이디" class="em" autocomplete="off" onkeyup="checkid(this.value)">       
                 <span id="iderror_message" class="iderror_message">이메일주소를 입력하세요.</span>  
           </div>
           <div class="writepw" id="writepw">
              <input type="password" name="user_pw" placeholder="비밀번호" class="pw" autocomplete="off" onkeyup="checkpw(this.value)"> 
              <span id="pwerror_message" class="pwerror_message">비밀번호를 입력하세요.</span> 
           </div>
            <input class="loginbtn" id="loginbtn" type="submit" value="로그인" >

        </form>
        
        
        

        <div class="find">
            <div id="fj" class="findpw"><a href="">비밀번호 찾기</a></div>
            <div id="fj" class="join"><a href="/join1.us">회원가입</a></div>
        </div>

    </div>
</body>
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <script>
       window.Kakao.init('8371f82865e1a5caad2fb3821aba3a1a');
       const flag = "";
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                           const user_name = document.getElementById("user_name");
                            const user_email = document.getElementById("user_email");
                            
                            const kakao_account = res.kakao_account;
                            
                            console.log(kakao_account.profile.nickname);
                            console.log(kakao_account.email);

                            user_name.value = kakao_account.profile.nickname;
                            user_email.value = kakao_account.email;
                            
                            console.log(user_name.value);
                            console.log(user_email.value);
                            
                            if(user_name.value != null && user_name.value != null){
                               var kakao = document.kakao;
                               kakao.submit();
                            }
           
                           /*  location.href="${cp}/login/Kloginok.us"; */
                            
                            <%-- <%response.sendRedirect("logintestOKpage.jsp");%> --%>                         
                           /*  location.href="./logintestOKpage.jsp"; */
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginForm.js"></script>
</html>