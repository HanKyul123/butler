const txtnick = document.getElementById("WN");
const txtnickname = document.getElementById("user_nick");
const txtaddrs = document.getElementById("modify_addr");
const txtaddr = document.getElementById("addr_txt");
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

  //    닉네임
function checknick(value){
  if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
      return false;
    }

  if(!nick_chk(value)){
      txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid red")
      $('.modify_nick_btn').attr("disabled",true);

      }else if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
  }
  else{
      txtnick.innerHTML="사용 가능한 닉네임 입니다.";
      txtnick.style.color="rgb(19, 106, 227)";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",false);
  }
}


// 닉네임 수정
function myFunction() {
    var x = document.getElementById("WNN");
    var y = document.getElementById("MNB");
    var z = document.getElementById("CMB");
    var d = document.getElementById("XB1");
    var w = document.getElementById("wary1");


      x.style.display = "block";
      d.style.display = "block";
      y.style.display = "none";
      z.style.display = "block";
      w.style.display = "block";

      x.focus();
  }
function myFunction_1() {
    var x = document.getElementById("WNN");
    var n = document.getElementsByClassName("user_nick");
    var d = document.getElementById("XB1");
    var y = document.getElementById("MNB");
    var z = document.getElementById("CMB");
    var w = document.getElementById("wary1");

      x.style.display = "none";
      d.style.display = "none";
      n.innerHTML=$('#WNN').val();
      y.style.display = "block";
      z.style.display = "none";
      w.style.display = "none";

      if(x.value!=""){
        user_nick.innerHTML=x.value;
      }


      
      $('#MNB').attr("disabled",false);
    x.value="";
    txtnick.innerHTML="";
    if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
      return false;
    }

  if(!nick_chk(value)){
      txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid red")
      $('.modify_nick_btn').attr("disabled",true);

      }else if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
  }
  else{
      txtnick.innerHTML="사용 가능한 닉네임 입니다.";
      txtnick.style.color="rgb(19, 106, 227)";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",false);
  }
  }


// 휴대폰번호 수정
function myFunction2() {
    var x = document.getElementById("WNP");
    var y = document.getElementById("MPB");
    var c = document.getElementById("SC");
    var d = document.getElementById("XB");
   
    
      x.style.display = "block";
      y.style.display="none"
      c.style.display = "block";
      d.style.display = "block";
      x.focus();

  }

  const Pvalue = document.getElementById("WNP");
function myFunction2_1() {
    var x = document.getElementById("WNP");
    var y = document.getElementById("MPB");
    var c = document.getElementById("SC");
    var d = document.getElementById("XB");
    
    
    x.style.display = "none";
    y.style.display="block";
    c.style.display = "none";
      d.style.display = "none";
      Pvalue.innerHTML="";
      
    }
function myFunction2_2() {
    var x = document.getElementById("WNN");
    var d = document.getElementById("XB1");
    var y = document.getElementById("MNB");
    var z = document.getElementById("CMB");
    var w = document.getElementById("wary1");

    
    
    x.style.display = "none";
    d.style.display = "none";
    y.style.display = "block";
    z.style.display = "none";
    w.style.display = "none";
    $('#MNB').attr("disabled",false);
    x.value="";
    txtnick.innerHTML="";
    if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
      return false;
    }

  if(!nick_chk(value)){
      txtnick.innerHTML="2~10자의 한글, 영문, 숫자만 사용할 수 있습니다.";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid red")
      $('.modify_nick_btn').attr("disabled",true);

      }else if(value==""){
      txtnick.innerHTML="";
      txtnick.style.color="red";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",true);
  }
  else{
      txtnick.innerHTML="사용 가능한 닉네임 입니다.";
      txtnick.style.color="rgb(19, 106, 227)";
      $('.write_new_nick').css("border","1px solid rgb(166, 166, 166)")
      $('.modify_nick_btn').attr("disabled",false);
  }
      
    }
    
    
    //   인증코드
    function myFunction3() {
      var x = document.getElementById("WPC");
      var y = document.getElementById("PCB");
      var d = document.getElementById("XB");
      var e = document.getElementById("time");
      
      $('.send_code').attr("disabled", true);
        e.style.display="block";
        x.style.display = "block";
        y.style.display="block";
        d.style.display = "none";
        x.focus();


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
        $('.send_code').attr("disabled", false);

        

        }
    },1000)
        
    }

// 주소 수정
    function myFunction4() {
        var y = document.getElementById("MAB");
        var c = document.getElementById("sample6_postcode");
        var d = document.getElementById("SEB");
        var a = document.getElementById("CAB");
        var e = document.getElementById("sample6_address");
        var f = document.getElementById("sample6_detailAddress");
        var g = document.getElementById("sample6_extraAddress");
        var x = document.getElementById("XB2");

        $('.complete_addr_btn').attr("disabled", true);
          c.style.display = "block";
          d.style.display = "block";
          e.style.display = "block";
          f.style.display = "block";
          g.style.display = "block";
          a.style.display = "block";
          y.style.display = "none";
          x.style.display = "block";

       
      }
// 주소 수정 완료

      function myFunction4_1() {
        var y = document.getElementById("MAB");
        var c = document.getElementById("sample6_postcode");
        var d = document.getElementById("SEB");
        var a = document.getElementById("CAB");
        var x = document.getElementById("XB2");
        var e = document.getElementById("sample6_address");
        var f = document.getElementById("sample6_detailAddress");
        var g = document.getElementById("sample6_extraAddress");

        if(e.value!=""&&f.value!=""){
          
          txtaddrs.innerHTML=e.value+" "+f.value;

        }

        
          c.style.display = "none";
          d.style.display = "none";
          e.style.display = "none";
          f.style.display = "none";
          g.style.display = "none";
          a.style.display = "none";
          x.style.display = "none";
          y.style.display = "block";

          c.value="";
          e.value="";
          f.value="";
          g.value="";

       
      }

      $('#sample6_address').on("input",function(){        
          if($('#sample6_address').value==""){
            $('.complete_addr_btn').attr("disabled", true);
          }
          else{
          $('.complete_addr_btn').attr("disabled", false);
        }
      })
      $('#sample6_detailAddress').on("input",function(){        
          if($('#sample6_detailAddress').value==""){
            $('.complete_addr_btn').attr("disabled", true);
          }
          else{
          $('.complete_addr_btn').attr("disabled", false);
        }
      })



      function myFunction4_2() {
        var y = document.getElementById("MAB");
        var c = document.getElementById("sample6_postcode");
        var d = document.getElementById("SEB");
        var a = document.getElementById("CAB");
        var x = document.getElementById("XB2");
        var e = document.getElementById("sample6_address");
        var f = document.getElementById("sample6_detailAddress");
        var g = document.getElementById("sample6_extraAddress");


        
          c.style.display = "none";
          d.style.display = "none";
          e.style.display = "none";
          f.style.display = "none";
          g.style.display = "none";
          a.style.display = "none";
          x.style.display = "none";
          y.style.display = "block";

          c.value="";
          e.value="";
          f.value="";
          g.value="";

       
      }



      


    var cs = document.querySelector("#WNP");
    // 폰 번호 적으면 버튼 활성화
$('.write_new_phone').on('input',function(){
  if($('.write_new_phone').val()==''){
      $('.send_code').attr("disabled", true);
      $('.write_new_phone').css("border","1px solid rgb(166, 166, 166)")
  }else{
      if(cs.value.length >= 10){
      $('.send_code').attr("disabled", false);
      $('.write_new_phone').css("border","1px solid rgb(166, 166, 166)")
    }
      else if(cs.value.length<11){
        $('.send_code').attr("disabled", true);
        $('.write_new_phone').css("border","1px solid red")
      }
  }
})

var wc = document.querySelector("#WPC");
$('.write_phone_code').on('input',function(){
  if($('.write_phone_code').val()==''){
      $('.phone_code_btn').attr("disabled", true);
  }else{
      if(wc.value.length == 4){
      $('.phone_code_btn').attr("disabled", false);}
      else if(wc.value.length<4){
        $('.phone_code_btn').attr("disabled", true);
      }
  }
})



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

  function checkaddr(value){
    if(value==""){
        txtaddr.innerHTML=""
        txtaddr.style.color="red";
        $('#sample6_detailAddress').css("border","1px solid rgb(166, 166, 166)");
        return false;
    }

    if(!addr_chk(value)){
        txtaddr.innerHTML="알맞은 형식으로 입력해주세요";
        txtaddr.style.color="red";
        $('#sample6_detailAddress').css("border","1px solid red")
        return false;
    }else{
        txtaddr.innerHTML="";
        $('#sample6_detailAddress').css("border","1px solid rgb(166, 166, 166)");
    }
}


