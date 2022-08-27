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

    
    const parent_review = document.getElementById("my_review_box2_1");
    let counttxt = document.getElementById("MRC_n");

    function delete_review(i){
        i.parentNode.parentNode.parentNode.remove();
        console.log(i.parentNode.parentNode.parentNode);
        
        if(parent_review.childElementCount < 0){
        	counttxt.innerHTML = 0;
        }else{
        	counttxt.innerHTML = parent_review.childElementCount;
        }
        
        console.log(parent_review.childElementCount);
    }
    
    
    $("#addpic_btn").on("click",function(){
    	$("#mody_Thumbnail").remove();
    })

    
    
    
    const img_box = document.getElementById("Thumbnail_Box");
    function nonimg () {
    	if(img_box.childElementCount<1){
    		$("#Thumbnail_Box").css("display","none");
    	}else{
    		$("#Thumbnail_Box").css("display","block");
    	}
	}
    
    nonimg();
    
    
    