function tog1(){
    $('.search').css('display','block');
    $('.search').focus();
    $('.btn_search').css('transform','translateX(-2850%)');
    $('.list').css('visibility','hidden');
    $('.srh_mask').css('display','block');
    $('.X').css('display', 'block');
    $('.recommend_box').css('display','block')

    //  $('.wrap').css('background-color','rgba(0, 0, 0, 0.278)');
   }
   
   
   function tog2(){
       $('.search').css('display','none');
       $('.btn_search').css('transform','translateX(0)');
       $('.list').css('visibility','inherit');
       $('.srh_mask').css('display','none')
       $('.X').css('display', 'none');
       $('.recommend_box').css('display', 'none');

       
}

const header = document.querySelector("header");
const icon = document.getElementById("H_logo");
const Xicon = document.getElementById("X");
const cPF = document.getElementById("PF");

const headerHeight = header.getBoundingClientRect().height;

window.addEventListener("scroll", ()=>{
    if(window.scrollY>headerHeight){
       header.classList.add('scroll');
       icon.src="/NORUN/img/Hotel_width_logo.png";
       Xicon.src="/NORUN/img/X_pupple.png";
       cPF.src="img/click_profile_P.png";
    }else{
        header.classList.remove('scroll');
        icon.src="/NORUN/img/Hotel_width_white_logo.png";
        Xicon.src="/NORUN/img/X.png";
        cPF.src="img/click_profile.png";
    }
});


