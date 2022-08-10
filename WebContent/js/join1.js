


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






