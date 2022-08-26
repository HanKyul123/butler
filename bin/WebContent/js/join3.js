   // 이메일
   const email = document.getElementsByName("email");
   const txtemail = document.getElementById("email_txt");
   
   const user_name = document.getElementsByName("user_name");
   const txtname = document.getElementById("name_txt");

   // 비밀번호
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

         function name_check(name){
            const regExp = /[가-힣]/g; 
            const regex= /([^가-힣\x20])/i;
            if(name.search(/\s/) !== -1) {
                return false;
            }else if(regex.test(name)){
                return false;
            }
            else if(regExp.test(name)){
                return true;
            }else{
                return false;
            }
             
            }


         function isPassword(password) {
             var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
             var regEx = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
             if(password.search(/\s/) !== -1) {
                 return false;
             }
          
             if(regExp.test(password)){
                 return true;
             }else if(regEx.test(password)){
                 return true;
             }
             else{
                 return false;
             }

             }


                function nick_chk(nick){
                    if(nick.length < 2 || nick.length > 10) {
                    return false;
                    }
                    else if(nick.search(/\s/) !== -1) {
                        return false;
                    }
                    var chk = /[0-9]|[a-z]|[A-Z]|[가-힣]/;
            
                    for( var i = 0; i <= nick.length -1 ; i++ ){if(chk.test(nick.charAt(i))){
                    }
                    else{
                    return false;
                        }
                    }   
                 return true;
                }


                function addr_chk(addr){
                    var chk = /[0-9]|[가-힣]|[\s]/gi;

                    if(addr.length > 0){

                    }

                    if(chk.test(addr)){

                    }else{
                        return false;
                    }
                return true;
            }





         // 이메일

    function checkemail(value){
       if(value == ""){
            txtemail.innerHTML = "이메일을 입력해주세요.";
            txtemail.style.color="red";
       }else if(!email_check(value)){
            txtemail.innerHTML = "알맞은 이메일 형식을 입력해주세요.";
            txtemail.style.color="red";
       }else{
            txtemail.innerHTML="사용 가능한 이메일입니다.";
            txtemail.style.color="rgb(19, 106, 227)";
       }
    }



    
    function checkname(value){

        if(value==""){
            txtname.innerHTML=""
            txtname.style.color="red";
            return false;
        }

        if(!name_check(value)){
            txtname.innerHTML="이름 형식이 올바르지 않습니다.(한글 or 자음/모음 비분리)"
            txtname.style.color="red";
            return false;
        }else if(value.length<2){
            txtname.innerHTML="2글자 이상 입력해주세요."
            txtname.style.color="red";
            return false;
        }else{
            txtname.innerHTML="";
            txtname.style.color="rgb(19, 106, 227)";
        }

        }






    //    비밀번호

    
    
    function checkpw(value){
            if(value==""){
                txtpw.innerHTML=""
                txtpw.style.color="red";
                return false;
            }

            if(value.length < 8){
                txtpw.innerHTML = "8문자 이상 입력해주세요.";
                txtpw.style.color="red";
                return false;
            }else if(!isPassword(value)){
                txtpw.innerHTML = "올바른 비밀번호를 입력하세요.(숫자+문자)";
                txtpw.style.color="red";
                return false;
            }else if(value==""){
                txtpw.innerHTML="";
                txtpw.style.color="red";
                return false;
            }else{
                txtpw.innerHTML="사용 가능한 비밀번호입니다.";
                txtpw.style.color="rgb(19, 106, 227)";
            }
        }

        

        const pw_I = document.querySelector('.pw_I');
    // 비밀번호 재확인
        function checkrepw(value){
            if(value==""){
                txtre_pw.innerHTML=""
                txtre_pw.style.color="red";
                return false;
            }

            if(value != pw_I.value){
                txtre_pw.innerHTML="비밀번호가 일치하지 않습니다.";
                txtre_pw.style.color="red";
                return false;
            }else if(value == ""){
                txtre_pw.innerHTML="";
                txtre_pw.style.color="red";
                return false;
            }else{
                txtre_pw.innerHTML="비밀번호가 일치합니다.";
                txtre_pw.style.color="rgb(19, 106, 227)";
            }
        }





 //    닉네임
 
    function checknick(value){
            if(value==""){
                txtnick.innerHTML=""
                txtnick.style.color="red";
                return false;
            }

            if(!nick_chk(value)){
                txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
                txtnick.style.color="red";

                }else if(value==""){
                txtnick.innerHTML="";
                txtnick.style.color="red";
            }
            else{
                txtnick.innerHTML="사용 가능한 닉네임 입니다.";
                txtnick.style.color="rgb(19, 106, 227)";
            }
        }


    
    function checkaddr(value){
            if(value==""){
                txtaddr.innerHTML=""
                txtaddr.style.color="red";
                return false;
            }

            if(!addr_chk(value)){
                txtaddr.innerHTML="알맞은 형식으로 입력해주세요";
                txtaddr.style.color="red";
                return false;
            }else{
                txtaddr.innerHTML="";
            }
        }