


// 회원가입페이지 1 - 필수 항목 골라야 버튼 활성화
// 체크박스 전체 선택
$(".checkbox_group").on("click", "#check_all", function () {
    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
    if($('#check_all').is(":checked")){
        $('.next').attr('disabled',false);
    }else{
        $('.next').attr('disabled',true);
    }
});


$("#check_1").on('click',function(){
     if($("#check_1").prop("checked") == false){
        $('.next').attr('disabled',true);
    }else if($("#check_1").prop("checked") == true && $("#check_2").prop("checked") == true && $("#check_3").prop("checked") == true){
        $('.next').attr('disabled',false);
    }
})
$("#check_2").on('click',function(){
     if($("#check_2").prop("checked") == false){
        $('.next').attr('disabled',true);
    }else if($("#check_1").prop("checked") == true && $("#check_2").prop("checked") == true && $("#check_3").prop("checked") == true){
        $('.next').attr('disabled',false);
    }
})
$("#check_3").on('click',function(){
     if($("#check_3").prop("checked") == false){
        $('.next').attr('disabled',true);
    }else if($("#check_1").prop("checked") == true && $("#check_2").prop("checked") == true && $("#check_3").prop("checked") == true){
        $('.next').attr('disabled',false);
    }
})

// 체크박스 개별 선택
$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);

});


if($('#checkA').is(":checked")){
    $('.next').attr('disabled',false);
}else{
    $('.next').attr('disabled',true);
}

















let input = document.querySelector('.phone_num');
let input2 = document.querySelector('.prove_num');
// 폰 번호 적으면 버튼 활성화
$('.phone_num').on('input',function(){
    if($('.phone_num').val()==''){
        $('.btn_checked1').attr("disabled", true);
        
    }else{
        if(input.value.length==11){
        $('.btn_checked1').attr("disabled", false);}
        else if(input.value.length<11){$('.btn_checked1').attr("disabled", true);}
    }
})

// 인증번호 4자리 적으면 버튼 활성화
$('.prove_num').on('input',function(){
    if($('.prove_num').val()==''){
        if(input2.value.length<4){
        $('.btn_checked2').attr("disabled", true);}
    }else{
        if(input2.value.length==4){
        $('.btn_checked2').attr("disabled", false);}
    }
})

// 인증번호 받기 버튼 누르면 인증하는 박스 활성화






// 인증번호 받기 누르면 타이머 스타트, 버튼 이름 재전송으로 바꾸기

const modifyT = document.querySelector(".btn_checked1");
function sendcode(){
    $('.Prove_box').css('display','block');
    $('.btn_checked1').attr("disabled", true);
    $('.phone_num').attr("disabled", true);
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

        

        }
    },1000)
}









   // 이메일
   const email = document.getElementsByName("email");
   const txtemail = document.getElementById("email_txt");


   // 비밀번호
   const pw = document.getElementsByName("pw");
   const txtpw = document.getElementById("pw_txt");
   
   
   const re_pw = document.getElementsByName("re_pw");
   const txtre_pw = document.getElementById("re_pw_txt");


   // 닉네임
   const nick = document.getElementsByName("nick");
   const txtnick = document.getElementById("nick_txt");


   // 가입하기를 눌렀을 때 위의 것들 중 하나라도 비어있으면 
   // "* 표시된 곳 중 비어있는 칸이 있습니다."
   


   function sendall(){


    // 이메일
    var emailv = $(".email_I").val();

    function email_check(email) {
        var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
        return reg.test(email);
    }

       if(emailv == ""){
            txtemail.innerHTML = "이메일을 입력해주세요.";
            return false;
       }else if(!email_check(emailv)){
            txtemail.innerHTML = "알맞은 이메일 형식을 입력해주세요.";
            return false;

       }else{
            txtemail.innerHTML="사용 가능한 이메일입니다.";
            txtemail.style.color="rgb(19, 106, 227)";
       }


    //    비밀번호

       function isPassword(asValue) {
        var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
     
        return regExp.test(asValue);
        }

        var pwv = $(".pw_I").val();
        var re_pwv = $(".re_pw_I").val();
        var nickv = $(".nick_I").val();
       
       if(pwv.length < 8){
           txtpw.innerHTML = "8문자 이상 입력해주세요.";
           return false;
       }else if(!isPassword(pwv)){
            txtpw.innerHTML = "올바른 비밀번호를 입력하세요.(숫자+문자)";
            return false;
        }else{
            txtpw.innerHTML="사용 가능한 비밀번호입니다.";
            txtpw.style.color="rgb(19, 106, 227)";
        }
// 비밀번호 재확인

       if(pwv!=re_pwv){
            txtre_pw.innerHTML="비밀번호가 일치하지 않습니다.";
            return false;
       }else{
            txtre_pw.innerHTML="비밀번호가 일치합니다.";
            txtre_pw.style.color="rgb(19, 106, 227)";
       }

 //    닉네임
        function nick_chk(str){if(str.length < 2 || str.length > 10) {
            txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
            return false;
            }

            var chk = /[0-9]|[a-z]|[A-Z]|[가-힣]/;

            for( var i = 0; i <= str.length -1 ; i++ ){if(chk.test(str.charAt(i))){
                
            }
            else{
            return false;
                }
            }   
       return true;
    }
   

       if(nickv.length<2){
           txtnick.innerHTML="올바른 닉네임을 입력해주세요 (2글자 이상)";
           nickv.value="";
           return false;
       }else if(!nick_chk(nickv)){
            txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
            return false;
       }else{
           txtnick.innerHTML="사용 가능한 닉네임 입니다.";
           txtnick.style.color="rgb(19, 106, 227)";
       }
       return true;


   }













