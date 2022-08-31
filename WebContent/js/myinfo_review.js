const over1 = document.getElementById('modify_btn');
const over2 = document.getElementById('delete_btn');
const over3 = document.getElementById('MC');
const over4 = document.getElementById('CB');


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


    over3.addEventListener("mouseover", function () {
        over3.src="../../img/check_icon_hover.png";
    }, false);

    over3.addEventListener("mouseout", function () {
        over3.src="../../img/check_icon.png";
   
    }, false);
    
    
    over4.addEventListener("mouseover", function () {
        over4.src="../../img/cancel_icon_hover.png";
    }, false);

    over4.addEventListener("mouseout", function () {
        over4.src="../../img/cancel_icon.png";
    }, false);



    function modify(i){
    
    	console.log(i.parentNode.parentNode);	
    	let original = i.parentNode.parentNode;
    	
    	console.log(original.nextElementSibling);  	
    	let review = original.nextElementSibling;
    	
    	console.log(review.children[0]);
    	let new_review = review.children[0];
    	
    	original.style.display = "none";
    	new_review.style.display = "flex";
     
    }
   

    function complete(){
        $('.content_btn').css('display','flex');
        $('.newreview_btn').css('display','none');
    }

    function canceling(i){
    	console.log(i.parentNode.parentNode.parentNode);	
    	let original = i.parentNode.parentNode.parentNode;
    	
    	console.log(original.previousElementSibling);  	
    	let review = original.previousElementSibling;
    	
    	let new_review = original.children[0];
    	
    	new_review.style.display = "none";
    	review.style.display = "flex";
    
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
    
    
    