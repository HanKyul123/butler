
function tog1(){
    $('.search').css('display','block');
    $('.search').focus();
    $('#btn1').css('transform','translateX(-2400%)');
    $('.list').css('visibility','hidden');
    $('.srh_mask').css('display','block');
    $('.X').css('display', 'block');
    $('.recommend_box').css('display','block')

    // $('.wrap').css('background-color','rgba(0, 0, 0, 0.278)');
   }
function tog1_1(){
    $('.search2').css('display','block');
    $('.search2').focus();
    $('#btn2').css('transform','translateX(-2400%)');
    $('.list').css('visibility','hidden');
    $('.srh_mask').css('display','block');
    $('.X2').css('display', 'block');
    $('.recommend_box').css('display','block')
    $('.X').css('display', 'none');

    // $('.wrap').css('background-color','rgba(0, 0, 0, 0.278)');
   }
   
   
   function tog2(){
       $('.search').css('display','none');
       $('#btn1').css('transform','translateX(0)');
       $('.list').css('visibility','inherit');
       $('.srh_mask').css('display','none')
       $('.X').css('display', 'none');
       $('.recommend_box').css('display', 'none');
       $('.search2').css('display','none');
       $('#btn2').css('transform','translateX(0)');
       $('.X2').css('display', 'none');
}
   
   
   function tog3(){
       $('.search2').css('display','none');
       $('#btn2').css('transform','translateX(0)');
       $('.list').css('visibility','inherit');
       $('.srh_mask').css('display','none')
       
       $('.recommend_box').css('display', 'none');

       
}

   const header = document.querySelector("header");
   const icon = document.getElementById("H_logo");
   const Xicon = document.getElementById("X");
   const Xicon2 = document.getElementById("X2");
   const cPF = document.getElementById("PF");
   const btn1 = document.getElementById("btn1");
   const btn2 = document.getElementById("btn2");
// const search_btn = document.getElementsById("Sbtn");
   
   const headerHeight = header.getBoundingClientRect().height;

window.addEventListener("scroll", ()=>{
    if(window.scrollY>headerHeight){
       header.classList.add('scroll');
       icon.src="../../img/Hotel_width_logo.png";
       Xicon.src="../../img/X_pupple.png";
       Xicon2.src="../../img/X_pupple.png";
       cPF.src="../../img/click_profile_P.png";
       btn1.src="../../img/검색_모바일.png";
       btn2.src="../../img/검색_모바일.png";
       
    }else{
        header.classList.remove('scroll');
        icon.src="../../img/Hotel_width_white_logo.png";
        Xicon.src="../../img/X.png";
        Xicon2.src="../../img/X.png";
        cPF.src="../../img/click_profile.png";
        btn1.src="../../img/검색.png";
        btn2.src="../../img/검색.png";
      
    }
}); 
window.addEventListener("scroll", ()=>{
    if(window.scrollY>headerHeight){
       header.classList.add('scroll');
       icon.src="../../img/Hotel_width_logo.png";
       Xicon.src="../../img/X_pupple.png";
       Xicon2.src="../../img/X_pupple.png";
       cPF.src="../../img/click_profile_P.png";
       btn1.src="../../img/검색_모바일.png";
       btn2.src="../../img/검색_모바일.png";
       
       
    }else{
        header.classList.remove('scroll');
        icon.src="../../img/Hotel_width_white_logo.png";
        Xicon.src="../../img/X.png";
        Xicon2.src="../../img/X.png";
        cPF.src="../../img/click_profile.png";
        btn1.src="../../img/검색.png";
        btn2.src="../../img/검색.png";
      
    }
});



