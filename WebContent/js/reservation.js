

$('#animal').change(function() {
    var result = $('#animal option:selected').val();
    var resultT = $('#animal option:selected').text();
    var dog = $('.dog_weight option:selected').val();
    var cat = $('.cat_weight option:selected').val();
    var elseA = $('.bird_weight option:selected').val();
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


    if (resultT == '강아지') {
      $('.selectprice').show();
      $('.dog_weight').show();
      $('.cat_weight').hide();
      $('.bird_weight').hide();
      $('.reptile_weight').hide();
      $('.Farad_weight').hide();
      $('.rabbit_weight').hide();
      $('.hamster_weight').hide();
      $('.else_weight').hide();

      $('.dog_weight').css("display", "block");
      $('.cat_weight').css("display", "none");
      $('.bird_weight').css("display", "none");
      $('.reptile_weight').css("display", "none");
      $('.Farad_weight').css("display", "none");
      $('.rabbit_weight').css("display", "none");
      $('.hamster_weight').css("display", "none");
      $('.else_weight').css("display", "none");

        } 


    else if (resultT == '고양이') {
        $('.selectprice').show();
      $('.cat_weight').show();
      $('.dog_weight').hide();
      $('.bird_weight').hide();
      $('.reptile_weight').hide();
      $('.Farad_weight').hide();
      $('.rabbit_weight').hide();
      $('.hamster_weight').hide();
      $('.else_weight').hide();

      $('.cat_weight').css("display", "block");
      $('.dog_weight').css("display", "none");
      $('.bird_weight').css("display", "none");
      $('.reptile_weight').css("display", "none");
      $('.Farad_weight').css("display", "none");
      $('.rabbit_weight').css("display", "none");
      $('.hamster_weight').css("display", "none");
      $('.else_weight').css("display", "none");

        }
    else if (resultT == '새') {

        $('.selectprice').show();
        $('.bird_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.reptile_weight').hide();
        $('.Farad_weight').hide();
        $('.rabbit_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
  
        $('.bird_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");


    }else if (resultT == '파충류') {
        
        $('.selectprice').show();
        $('.reptile_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.rabbit_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
  
        $('.reptile_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");

    }else if (resultT == '패럿') {
        
        $('.selectprice').show();
        $('.Farad_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.reptile_weight').hide();
        $('.rabbit_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
  
        $('.Farad_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");

    }else if (resultT == '토끼') {
        
        $('.selectprice').show();
        $('.rabbit_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
  
        $('.rabbit_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");

    }else if (resultT == '햄스터') {
        
        $('.selectprice').show();
        $('.hamster_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.rabbit_weight').hide();
        $('.else_weight').hide();
  
        $('.hamster_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.else_weight').css("display", "none");

    }else if (resultT == '그 외') {
        
        $('.selectprice').show();
        $('.else_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.rabbit_weight').hide();
  
        $('.else_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");

    } else {
        $('.selectprice').hide();
        $('.rabbit_weight').hide();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
        
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
let book_charge = 0;
let txttotalprice = document.getElementById("pricecontent");
let addprice = 0;

// 장바구니 추가하기
  function copyDiv()  {


    // 강아지
    if($('#animal option:selected').text()=="강아지"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
            
    
            $('#animal option:selected').text()
            // 동물 종류 value 값
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.dog_weight option:selected').text()
            // 무게와 가격 value 값
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value = '"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value = '"+$('.dog_weight option:selected').text()+"'>"
            
        
            );

         // 상품 가격 가져오기
         var selected = $('.dog_weight option:selected').val();


         // 총 가격 구하기
         let pricenum = parseInt(selected);
         book_charge=book_charge+pricenum;
         txttotalprice.innerHTML=book_charge;
 
         // 상품가격 hidden input value 에 넣기
         var minusprice = $("#thisprice"+i).val();
         minusprice = selected;
 
         // 펫 종류 구하기
         var petname = $('#animal option:selected').text();
         
 
 
         arraypet.push(petname);
         array.push("bigadd"+i);
         arrayprice.push(minusprice);
 
 
 
         console.log("총 가격 :"+book_charge);
         console.log("상품 가격 :"+minusprice);
         console.log("펫 종류 :"+petname);

         console.log("[담긴 것들] :"+array);
         console.log("\n");
         i=i+1;

        //  새
    }else if($('#animal option:selected').text()=="새"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.bird_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value = '"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value = '"+$('.bird_weight option:selected').text()+"'>"
        );
        // 상품 가격 가져오기
        var selected = $('.bird_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();
        


        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }

    // 고양이
    else if($('#animal option:selected').text()=="고양이"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.cat_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.cat_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.cat_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }
    else if($('#animal option:selected').text()=="파충류"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.reptile_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.reptile_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.reptile_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }

    else if($('#animal option:selected').text()=="패럿"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.Farad_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.Farad_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.Farad_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }

    else if($('#animal option:selected').text()=="토끼"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.rabbit_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.rabbit_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.rabbit_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }

    else if($('#animal option:selected').text()=="햄스터"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.hamster_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.hamster_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.hamster_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
        console.log("상품 가격 :"+minusprice);
        console.log("펫 종류 :"+petname);

        console.log("[담긴 것들] :"+array);
        console.log("\n");
        i=i+1;
    }

    else if($('#animal option:selected').text()=="그 외"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.else_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button id='Xbtn"+i+"' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"</div>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input id='pets_weight"+i+"' type='hidden' value='"+$('.else_weight option:selected').text()+"'>"
        );

        // 상품 가격 가져오기
        var selected = $('.else_weight option:selected').val();


        // 총 가격 구하기
        let pricenum = parseInt(selected);
        book_charge=book_charge+pricenum;
        txttotalprice.innerHTML=book_charge;

        // 상품가격 hidden input value 에 넣기
        var minusprice = $("#thisprice"+i).val();
        minusprice = selected;

        // 펫 종류 구하기
        var petname = $('#animal option:selected').text();

        arraypet.push(petname);
        array.push("bigadd"+i);
        arrayprice.push(minusprice);



        console.log("총 가격 :"+book_charge);
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
    book_charge=book_charge-arrayprice[i];

    console.log("현재 총 가격 :"+book_charge);
    txttotalprice.innerHTML=book_charge;


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
        }else if(arraypet[i]=='새'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');
        }else if(arraypet[i]=='파충류'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');
        }else if(arraypet[i]=='패럿'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');
        }else if(arraypet[i]=='토끼'){
            arraypet.splice(i,1);
            arraypet.splice(i,0,'삭제');
        }else if(arraypet[i]=='햄스터'){
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

    
    


  