



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
   
    function canceling(i){
    	
    	let parent = i.parentNode.parentNode;
    	console.log(i.parentNode.parentNode);
    	parent.style.display="none";
    	
    	let older = i.parentNode.parentNode.parentNode.previousElementSibling;
    	console.log(i.parentNode.parentNode.parentNode.previousElementSibling);
    	
    	older.style.display="flex"
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

    
    
    
    