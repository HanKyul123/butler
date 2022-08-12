const over1 = document.getElementById('modify_btn');
const over2 = document.getElementById('delete_btn');

    over1.addEventListener("mouseover", function () {
        over1.src="img/modify_icon_focus.png";
    }, false);

    over1.addEventListener("mouseout", function () {
        over1.src="img/modify_icon.png";
   
    }, false);
    
    
    over2.addEventListener("mouseover", function () {
        over2.src="img/delete_focus.png";
    }, false);

    over2.addEventListener("mouseout", function () {
        over2.src="img/delete.png";
    }, false);