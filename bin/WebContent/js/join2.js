let input = document.querySelector('#phone_num');
let input2 = document.querySelector('#prove_num');

// 폰 번호 적으면 버튼 활성화
$('#phone_num').on('input',function(){
    if($('#phone_num').val()==''){
        $('.btn_checked1').attr("disabled", true);

    }else{
        if(input.value.length>=10){
        $('.btn_checked1').attr("disabled", false);
        var val1 = $('#phone_num').val();
        console.log(val1);
        
	        if(val1 != null){
	      
	        $('#phone_num_1').attr("value",val1);
		
	       	var val2 = $('#phone_num_1').val();
	        	console.log(val2);
	        }

        }
        else if(input.value.length<10){$('.btn_checked1').attr("disabled", true);}
    }
})

// 인증번호 4자리 적으면 버튼 활성화
$('#prove_num').on('input',function(){
    if(input2.value.length<4){
        $('.btn_checked2').attr("disabled", true);}
    if($('#prove_num').val()==''){

        $('.btn_checked2').attr("disabled", true);
    }else{
        if(input2.value.length==4){
        $('.btn_checked2').attr("disabled", false);}
    }
})

// 인증번호 받기 버튼 누르면 인증하는 박스 활성화



function sendcode(){

var user_phone = $('#phone_num').val();
// 인증번호 받기 누르면 타이머 스타트, 버튼 이름 재전송으로 바꾸기

const modifyT = document.querySelector(".btn_checked1");

    $('.Prove_box').css('display','block');
    $('.btn_checked1').attr("disabled", true);
    $('#phone_num').attr("disabled", true);
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