

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

      $('.dog_weight').css("display", "block");
      $('.cat_weight').css("display", "none");
      $('.else_weight').css("display", "none");

      result="강아지";
      
            
        } 


    else if (result == '고양이') {
        $('.selectprice').show();
        $('.cat_weight').show();
        $('.dog_weight').hide();
        $('.else_weight').hide();

        $('.cat_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        result="고양이";

        }
    else if (result == '그 외') {
        $('.selectprice').show();
        $('.else_weight').show();
        $('.cat_weight').hide();
        $('.dog_weight').hide();

        $('.else_weight').css("display", "block");
        $('.cat_weight').css("display", "none");
        $('.dog_weight').css("display", "none");


        result="그 외";


    } else {
        $('.selectprice').hide();
        $('.else_weight').hide();
        $('.cat_weight').hide();
        $('.dog_weight').hide()
        
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

let i = 0;
var array=[];
var arrayprice=[];
var arraypet=[];
let totalprice = 0;
let txttotalprice = document.getElementById("pricecontent");
let addprice = 0;

// 장바구니 추가하기
  function copyDiv()  {

    if($('#animal option:selected').val()=="강아지"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
            
    
            $('#animal option:selected').val()
            // 동물 종류 value 값
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.dog_weight option:selected').text()
            // 무게와 가격 value 값
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"
            );

         // 상품 가격 가져오기
         var selected = $('.dog_weight option:selected').val();


         // 총 가격 구하기
         let pricenum = parseInt(selected);
         totalprice=totalprice+pricenum;
         txttotalprice.innerHTML=totalprice;
 
         // 상품가격 hidden input value 에 넣기
         var minusprice = $("#thisprice"+i).val();
         minusprice = selected;
 
         // 펫 종류 구하기
         var petname = $('#animal option:selected').val();
         
 
 
         arraypet.push(petname);
         array.push("bigadd"+i);
         arrayprice.push(minusprice);
 
 
 
         console.log("총 가격 :"+totalprice);
         console.log("상품 가격 :"+minusprice);
         console.log("펫 종류 :"+petname);

         console.log("[담긴 것들] :"+array);
         console.log("\n");
         i=i+1;

    }else if($('#animal option:selected').val()=="그 외"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').val()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.else_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"
        );
        // 상품 가격 가져오기
        var selected = $('.else_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        totalprice=totalprice+pricenum;
        txttotalprice.innerHTML=totalprice;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').val();
        


        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+totalprice);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }
    else if($('#animal option:selected').val()=="고양이"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').val()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.cat_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='thispetname"+i+"' type='hidden'>"
        );

        // 상품 가격 가져오기
        var selected = $('.cat_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        totalprice=totalprice+pricenum;
        txttotalprice.innerHTML=totalprice;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').val();
        const hidden = document.getElementById("thispetname"+i);
        hidden.value=petname;
        console.log(hidden.value);

        


        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+totalprice);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }
    
}
function goreservation(){
    console.log("[담긴 것들] :"+array);

}


var totalarray=[];

// 쌤이 주신거
function removethis(i){
    // 총가격과 #thisprice+i 의 value 값을 parseint 로 변환해 빼어 계산한다.
    console.log("삭제 한 상품 가격 :"+arrayprice[i]);
    totalprice=totalprice-arrayprice[i];

    console.log("현재 총 가격 :"+totalprice);
    txttotalprice.innerHTML=totalprice;


    // 담긴 상품들 어레이에서 삭제하기
    let idx = array.indexOf("bigadd"+i);
    while(idx>-1){
        array.splice(idx, 1);
        idx = array.indexOf("bigadd"+i);
    }

    
    console.log("\n");


    $(".bigadd"+i).remove();

    console.log(arraypet[i]);



        if(arraypet[i]=='고양이'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');

        }else if(arraypet[i]=='강아지'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');

        }else if(arraypet[i]=='그 외'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');
        }


    console.log(arraypet);

}


// 예약하기
function reservation(){
    
    for(let i = 0; i < arraypet.length; i++) {
        if(arraypet[i] === '삭제')  {
            arraypet.splice(i,1);
            i--;
        }
      }

    console.log(arraypet);
}



let dateval = document.getElementById("demo");

$(".applyBtn btn btn-sm btn-primary").on("click",function(){
    let totaldate = document.getElementById("spandate");
    
    console.log("기간: "+dateval.value);

    totaldate.innerHTML=dateval.value;


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




    function modify(){
        $('.Mbox').css('display','block');
        $('.mask').css('display','block');
    }

    function delete_review(){
        $('.Review_Reply').css('display','none');
    }

    function complete(){
        $('.Mbox').css('display','none');
        $('.mask').css('display','none');
    }

    function cancel(){
        $('.Mbox').css('display','none');
        $('.mask').css('display','none');
    }

    


  