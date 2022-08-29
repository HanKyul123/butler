

$('#animal').change(function() {
    var result = $('#animal option:selected').val();
    var resultT = $('#animal option:selected').text();
       
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
      $('.amphibia_weight').hide();
      $('.Pig_weight').hide(); 
      
      

      $('.dog_weight').css("display", "block");
      $('.cat_weight').css("display", "none");
      $('.bird_weight').css("display", "none");
      $('.reptile_weight').css("display", "none");
      $('.Farad_weight').css("display", "none");
      $('.rabbit_weight').css("display", "none");
      $('.hamster_weight').css("display", "none");
      $('.else_weight').css("display", "none");
      $('.amphibia_weight').css("display", "none");
      $('.Pig_weight').css("display", "none");

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
      $('.amphibia_weight').hide();
      $('.Pig_weight').hide();

      $('.cat_weight').css("display", "block");
      $('.dog_weight').css("display", "none");
      $('.bird_weight').css("display", "none");
      $('.reptile_weight').css("display", "none");
      $('.Farad_weight').css("display", "none");
      $('.rabbit_weight').css("display", "none");
      $('.hamster_weight').css("display", "none");
      $('.else_weight').css("display", "none");
      $('.amphibia_weight').css("display", "none");
      $('.Pig_weight').css("display", "none");

        }
    else if (resultT == '조류') {

        $('.selectprice').show();
        $('.bird_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.reptile_weight').hide();
        $('.Farad_weight').hide();
        $('.rabbit_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
        
  
        $('.bird_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");



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
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
  
        $('.reptile_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

 
    }else if (resultT == '족제비과') {
        
        $('.selectprice').show();
        $('.Farad_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.reptile_weight').hide();
        $('.rabbit_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
  
        $('.Farad_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

    }else if (resultT == '토끼류') {
        
        $('.selectprice').show();
        $('.rabbit_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.else_weight').hide();
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
        
        $('.rabbit_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

    }else if (resultT == '설치류') {
        
        $('.selectprice').show();
        $('.hamster_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.rabbit_weight').hide();
        $('.else_weight').hide();
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
        
  
        $('.hamster_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

    }else if (resultT == '양서류') {
        
        $('.selectprice').show();
        $('.amphibia_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.rabbit_weight').hide();
        $('.else_weight').hide();
        $('.Pig_weight').hide();
        
        $('.amphibia_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

    }else if (resultT == '돼지류') {
        
        $('.selectprice').show();
        $('.Pig_weight').show();
        $('.dog_weight').hide();
        $('.cat_weight').hide();
        $('.bird_weight').hide();
        $('.Farad_weight').hide();
        $('.reptile_weight').hide();
        $('.hamster_weight').hide();
        $('.rabbit_weight').hide();
        $('.else_weight').hide();
        $('.amphibia_weight').hide();
        
        $('.Pig_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.else_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");

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
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
        
        $('.else_weight').css("display", "block");
        $('.dog_weight').css("display", "none");
        $('.cat_weight').css("display", "none");
        $('.bird_weight').css("display", "none");
        $('.Farad_weight').css("display", "none");
        $('.reptile_weight').css("display", "none");
        $('.hamster_weight').css("display", "none");
        $('.rabbit_weight').css("display", "none");
        $('.amphibia_weight').css("display", "none");
        $('.Pig_weight').css("display", "none");

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
        $('.amphibia_weight').hide();
        $('.Pig_weight').hide();
        
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
let fullcharge = 0;
let anotherprice = 0;
let txttotalprice = document.getElementById("pricecontent");
let addprice = 0;
const insidecnt = document.getElementById("parentadd");
let toprice = document.getElementById("book_charge");


// 장바구니 추가하기
  function copyDiv()  {
	  

    let nd = document.getElementById("nowdate");
    console.log(nd.value);
    let xcount = parseInt(nd.value);
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
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value = '"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value = '"+$('.dog_weight option:selected').text()+"'>"+"</div>"
            
        
            );
        

         // 상품 가격 가져오기
         var selected = $('.dog_weight option:selected').val();


      // 총 가격 구하기
         let pricenum = parseInt(selected);
         fullcharge=anotherprice+pricenum;
         anotherprice=anotherprice+pricenum;
         
         book_charge=book_charge+pricenum*xcount;
         toprice.value=book_charge;
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
         console.log(insidecnt.childElementCount);
         i=i+1;

        //  새
    }else if($('#animal option:selected').text()=="조류"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.bird_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value = '"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value = '"+$('.bird_weight option:selected').text()+"'>"+"</div>"
        );
        // 상품 가격 가져오기
        var selected = $('.bird_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.cat_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.cat_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.reptile_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.reptile_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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
    }else if($('#animal option:selected').text()=="양서류"){
        $("#parentadd").append(
                "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
                "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
                "<span>"+
        
                $('#animal option:selected').text()
                
                +"</span>"
                +"&nbsp;"+"<span>"+
                
                
                $('.amphibia_weight option:selected').text()
                
                +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.reptile_weight option:selected').text()+"'>"+"</div>"
            );

            // 상품 가격 가져오기
            var selected = $('.amphibia_weight option:selected').val();


         // 총 가격 구하기
            let pricenum = parseInt(selected);
            fullcharge=anotherprice+pricenum;
            anotherprice=anotherprice+pricenum;
            
            book_charge=book_charge+pricenum*xcount;
            toprice.value=book_charge;
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
    
    else if($('#animal option:selected').text()=="설치류"){
        $("#parentadd").append(
                "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
                "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
                "<span>"+
        
                $('#animal option:selected').text()
                
                +"</span>"
                +"&nbsp;"+"<span>"+
                
                
                $('.hamster_weight option:selected').text()
                
                +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.reptile_weight option:selected').text()+"'>"+"</div>"
            );

            // 상품 가격 가져오기
            var selected = $('.hamster_weight option:selected').val();


         // 총 가격 구하기
            let pricenum = parseInt(selected);
            fullcharge=anotherprice+pricenum;
            anotherprice=anotherprice+pricenum;
            
            book_charge=book_charge+pricenum*xcount;
            toprice.value=book_charge;
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

    else if($('#animal option:selected').text()=="족제비과"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.Farad_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.Farad_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.Farad_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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
 
    else if($('#animal option:selected').text()=="돼지류"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.Pig_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.rabbit_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.Pig_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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

    else if($('#animal option:selected').text()=="토끼류"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.rabbit_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.hamster_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.rabbit_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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

    else if($('#animal option:selected').text()=="기타"){
        $("#parentadd").append(
            "<div id='bigadd' class='bigadd"+i+"' style='width: 250px;display: flex;flex-wrap: wrap;'>"+
            "<div id='add' style=' font-size:12px; padding-left: 5px; width: 180px; height: 30px;line-height: 32px; border: 1px solid rgb(173, 173, 173);border-radius: 3px;color:rgb(125, 125, 125);margin-top: 10px;'>"+
            "<span>"+
    
            $('#animal option:selected').text()
            
            +"</span>"
            +"&nbsp;"+"<span>"+
            
            
            $('.else_weight option:selected').text()
            
            +"</span>"+"</div>"+"<button type='button' id='Xbtn"+i+"' class='Xbtni' style=' position: relative;top: 8px;margin-top: 13px;margin-left: 5px;width: 17px;height: 22px;background-color: transparent;border: none;' onclick='removethis("+i+")'>"+"<img src='../../img/X_gray.png' style='position: relative;bottom: 8px;width: 20px;height: 23px;right: 10px;cursor: pointer;'>"+"</button>"+"<input id='thisprice"+i+"' type='hidden'>"+"<input name='pets_type"+i+"' id='pets_type"+i+"' type='hidden' value='"+$('#animal option:selected').val()+"'>"+"<input name='pets_weight"+i+"' id='pets_weight"+i+"' type='hidden' value='"+$('.else_weight option:selected').text()+"'>"+"</div>"
        );

        // 상품 가격 가져오기
        var selected = $('.else_weight option:selected').val();


     // 총 가격 구하기
        let pricenum = parseInt(selected);
        fullcharge=anotherprice+pricenum;
        anotherprice=anotherprice+pricenum;
        
        book_charge=book_charge+pricenum*xcount;
        toprice.value=book_charge;
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
        console.log(book_charge+"+"+minusprice);
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



// 예약하기
function reservation(){
    
    for(let i = 0; i < arraypet.length; i++) {
        if(arraypet[i] === '삭제')  {
            arraypet.splice(i,1);
            i--;
        }
      }


}









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
    
    
    let picklink = document.getElementById("file");

// 수정하기
    function modify(){
        $('.Mbox').css('display','block');
        $('.mask').css('display','block');
    }
// 리뷰 삭제하기
    function delete_review(i){
        i.parentNode.parentNode.parentNode.remove();
    }

    //    유저가 올린 사진 갯수 구하고 css 적용
   var pic=document.getElementById("URP");
   var picCount = pic.childElementCount;
   console.log(picCount)

   if(picCount==0){
    $(".user_review_pic").css("border","none");
    $(".replyBigbox").css("bottom","6px")
   }

// 수정 삭제
    function cancel(){
        $('.Mbox').css('display','none');
        $('.mask').css('display','none');
        new_review.value="";
    }


    
    
    
    

   
   $('#addpic_btn').on("click",function(){
       var ele = document.getElementById("ele");
      var eleCount = ele.childElementCount;

    let thisvalue = picklink.value.substr(12, picklink.value.length-1)

    console.log(picklink.value);
    console.log(thisvalue);
    console.log(eleCount);
    console.log();

    if(picklink.value!==""){

        $(".modypic").append(
            "<div class = 'pick'>"+"<img src='${pageContext.request.contextPath}/img/"+thisvalue+"' id='modypic'>"+"<button id='Deletepic' onclick='deletethispic(this)'>"+"<img id='X2' src='img/X_black.png'>"+"</button>"+"</div>"
            )
        }
        if(picklink.value!==""){

            $(".user_review_pic").append(
                "<img class='user_pic' src='${pageContext.request.contextPath}/img/"+thisvalue+"'>"
                )
            }
    
        if(eleCount>=8){
        $(".CaddB").attr("disabled",true);
            
        }
        else if(eleCount<9){
        $(".CaddB").attr("disabled",false);

        }
    picklink.value="";
   
   })

   // 사진 지우기
//   function deletethispic(I){
//    var ele = document.getElementById("ele");
//      var eleCount = ele.childElementCount;
//    console.log(i.parentNode);
//
//    i.parentNode.remove();
//
//    eleCount=eleCount-1;
//    picCount=picCount-1;
//    console.log(eleCount);
//    $(".CaddB").attr("disabled",false);
//   }
   
   function deletepick() {
	$(".thumbnail").remove();
}
   
   
   // 수정 완료
   function complete(){
    $('.Mbox').css('display','none');
    $('.mask').css('display','none');
    let before_review = document.getElementById("R_box");
    let new_review = document.getElementById("Mnew_review");

    if(new_review.value!==""){
        before_review.innerHTML=new_review.value;
    }
    new_review.value="";

    $(".user_pic").css("display", "block");
    
    if(picCount>0){
        $(".user_review_pic").css("border","1px solid rgb(205, 205, 205)");
        $(".replyBigbox").css("bottom","0px")
       }

}



   


  