
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

  const Pbox = document.getElementById('addinfo');
/*  function remove(){
  Pbox.remove();
  }*/

  $('#Xbtn').on("click",function(){
      Pbox.remove();
  })




  const over1 = document.getElementById('modi');
  const over2 = document.getElementById('delete');

      over1.addEventListener("mouseover", function () {
          over1.src="../../img/modify_icon_focus.png";
      }, false);

      over1.addEventListener("mouseout", function () {
          over1.src="../../img/modify_icon.png";
     
      }, false);
      
      
      over2.addEventListener("mouseover", function () {
          over2.src="../../img/delete_focus.png";
      }, false);

      over2.addEventListener("mouseout", function () {
          over2.src="../../img/delete.png";
      }, false);








