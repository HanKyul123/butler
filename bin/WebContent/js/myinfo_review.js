//const over1 = document.getElementById('modify_btn');
//const over2 = document.getElementById('delete_btn');
//
//    over1.addEventListener("mouseover", function () {
//        over1.src="img/modify_icon_focus.png";
//    }, false);
//
//    over1.addEventListener("mouseout", function () {
//        over1.src="img/modify_icon.png";
//   
//    }, false);
//    
//    
//    over2.addEventListener("mouseover", function () {
//        over2.src="img/delete_focus.png";
//    }, false);
//
//    over2.addEventListener("mouseout", function () {
//        over2.src="img/delete.png";
//    }, false);






    function modify(){
        $('.content_btn').css('display','none');
        $('.newreview_btn').css('display','flex');
    }
  

    function complete(){
        $('.content_btn').css('display','flex');
        $('.newreview_btn').css('display','none');
    }

    function cancel(){
        $('.content_btn').css('display','flex');
        $('.newreview_btn').css('display','none');
    }

    function delete_review(){
        $('.review_box').remove();
    }