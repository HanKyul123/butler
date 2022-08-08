
$('#animal').change(function() {
    var result = $('#animal option:selected').val();
    var resultT = $('#animal option:selected').text();
    var dog = $('.dog_weight option:selected').val();
    var cat = $('.cat_weight option:selected').val();
    var elseA = $('.else_weight option:selected').val();
    var allA = $('#selectbox option:selected').val();
    var allAT = $('#selectbox option:selected').text();

    
       
    if(result=="선택"){
        $('.add').attr("disabled",true);
    }else{
        $('.add').attr("disabled",false);
    }
    if(result=="선택"){
        $('.add').attr("disabled",true);
    }else{
        $('.add').attr("disabled",false);
    }


    if (result == '강아지') {
      $('.selectprice').show();
      $('.dog_weight').show();
      $('.cat_weight').hide();
      $('.else_weight').hide();
      $('.else_weight').hide();
            
        } 


    else if (result == '고양이') {
        $('.selectprice').show();
        $('.cat_weight').show();
        $('.dog_weight').hide();
        $('.else_weight').hide();


        }
    else if (result == '그 외') {
        $('.selectprice').show();
        $('.else_weight').show();
        $('.cat_weight').hide();
        $('.dog_weight').hide();



    } else {
        $('.selectprice').hide();
        $('.else_weight').hide();
        $('.cat_weight').hide();
        $('.dog_weight').hide()
        
      }
      
      if (dog =="선택") {
                $('.add').attr("disabled",true);
            } else {
                $('.add').attr("disabled",false);
                dog=="선택";
            }


            if (cat =='선택') {
                $('.add').attr("disabled",true);
                
            } else {
                $('.add').attr("disabled",false);
                
            }


        if (elseA =='선택') {
            $('.add').attr("disabled",true);
            
        } else {
            $('.add').attr("disabled",false);
            
        }


  });  
 
 

// select 값이 선택이면 버튼 비활성화

  $('#animal').change(function() {
    var result = $('#animal option:selected').val();
    if (result == '선택') {
        $('.add').attr("disabled",true);
        $('#selectbox option:selected').val()=="선택";
    } else {
        $('.add').attr("disabled",false);
        $('#selectbox option:selected').val()=="선택";
    }
  });



  function copyDiv()  {
    // 'test' node 선택
    const parentbox = document.getElementsByClassName('addinfo')[0];
    // 노드 복사하기
    const newNode = parentbox.cloneNode(true);
    
    // 복사한 노드 붙여넣기
    parentbox.after(newNode);
    parentbox.style.display = "flex";
  }


    // 요소 삭제하기   
  $('.Xbtn').click(function() {  
      
      var index = $(this).parent().index(); //몇번 째 방인지 구하기.
      console.log(index);
      $(this).parent().parent().children().eq(index).remove();

   
});

// function remove(){

// }



//   addinfo 안에 자식이 있으면 버튼 활성화 없으면 비활성화.

 
// var parentadd = document.querySelector('.parentadd');

// if(parentadd.children()==""){

// }








//   $('#selectbox').change(function() {
//     var result = $('#selectbox option:selected').val();
//     if (result == '선택') {
//         $('.add').attr("disabled",true);
//     } else {
//         $('.add').attr("disabled",false);
//         $('#selectbox option:selected').val()=="선택";
//     }
//   })









