   // 이메일
   const email = document.getElementsByName("email");
   const txtemail = document.getElementById("email_txt");
   
   const user_name = document.getElementsByName("user_name");
   const txtname = document.getElementById("name_txt");

   // 비밀번호
   const pw = document.getElementsByName("pw");
   const txtpw = document.getElementById("pw_txt");
   
   
   const re_pw = document.getElementsByName("re_pw");
   const txtre_pw = document.getElementById("re_pw_txt");


   // 닉네임
   const nick = document.getElementsByName("nick");
   const txtnick = document.getElementById("nick_txt");
   
   
   const txtaddr = document.getElementById("addr_txt");

    
        
        function email_check(email) {
            var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
            return reg.test(email);
         }

         function name_chk(str){
            if(str.length < 2) {
             txtname.innerHTML="이름은 2글자 이상입니다.";
             return false;
             }
             var chk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
             for( var i = 0; i <= str.length -1 ; i++ ){
                if(chk.test(str.charAt(i))){
             }
             else{
             return false;
                 }
             }   
             return true;
            }


            function isPassword(asValue) {
                var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
             
                return regExp.test(asValue);
                }


                function nick_chk(str){
                    if(str.length < 2 || str.length > 10) {
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


           function addr_chk(str){
                var chk = /[0-9]|[가-힣]/;

                for( var i = 0; i <= str.length -1 ; i++ ){if(chk.test(str.charAt(i))){
                    
                }
                else{
                return false;
                    }
                }   
            return true;
        }




         // 이메일

    function checkemail(value){
       if(value == ""){
            txtemail.innerHTML = "이메일을 입력해주세요.";
       }else if(!email_check(value)){
            txtemail.innerHTML = "알맞은 이메일 형식을 입력해주세요.";

       }else{
            txtemail.innerHTML="사용 가능한 이메일입니다.";
            txtemail.style.color="rgb(19, 106, 227)";
       }
    }



    
    function checkname(value){
            if(value=""){
                txtname.innerHTML="이름을 입력해주세요."
            }else if(!name_chk(value)){
                txtname.innerHTML="이름 형식이 올바르지 않습니다.(한글)"
            }else{
                txtname.innerHTML="이름이 확인되었습니다.";
                txtname.style.color="rgb(19, 106, 227)";
            }
        }






    //    비밀번호

    
    
    function checkpw(value){
            if(value.length < 8){
                txtpw.innerHTML = "8문자 이상 입력해주세요.";
            }else if(!isPassword(value)){
                txtpw.innerHTML = "올바른 비밀번호를 입력하세요.(숫자+문자)";
            }else if(value==""){
                txtpw.innerHTML="";
            }else{
                txtpw.innerHTML="사용 가능한 비밀번호입니다.";
                txtpw.style.color="rgb(19, 106, 227)";
            }
        }

        var pwv = $(".pw_I").val();

    // 비밀번호 재확인
        function checkrepw(value){
            if(pwv!=value){
                txtre_pw.innerHTML="비밀번호가 일치하지 않습니다.";
            }else if(pwv == value){
                txtre_pw.innerHTML="비밀번호가 일치합니다.";
                txtre_pw.style.color="rgb(19, 106, 227)";
            }else{
                txtre_pw.innerHTML="";
            }
        }





 //    닉네임
 
 function checknick(value){
      if(!nick_chk(value)){
           txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
        }else if(value==""){
           txtnick.innerHTML="";
       }
       else{
           txtnick.innerHTML="사용 가능한 닉네임 입니다.";
           txtnick.style.color="rgb(19, 106, 227)";
       }
    }


    
    function checkaddr(value){
            if(!addr_chk(value)){
                txtaddr.innerHTML="한글, 숫자만 사용할 수 있습니다.";
            }else{
                txtaddr.innerHTML="";
            }
        }