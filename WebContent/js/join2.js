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

