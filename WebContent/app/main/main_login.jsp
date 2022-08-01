<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Butler-Animal Hotel</title>
    <link rel="stylesheet" href="../../css/pc_header_login.css">
    <link rel="stylesheet" href="../../css/footer_main.css">
    <link rel="icon" href="../../img/Hotel_icon.png">
    <link rel="stylesheet" href="../../css/main.css">
    
    
</head>

<!-- 헤더  -->
<%@ include file="../../header/pc_header_login.jsp" %>

<!-- Body -->

            <body>
                <div class="slice">
                    <img class="mainimg" src="../../img/메인베너배경이미지.jpg" alt="">
                </div>

                <div class="menuBanner">
                <a href="">
                    <div id="menuB" class="menu1">
                        <img class="pic" src="../../img/animal_hospital.png" alt="">
                        <span class="Mtitle">동물병원</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu2">
                        <img class="pic" src="../../img/animal_Hotel.png" alt="">
                        <span class="Mtitle">호텔</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu3">
                        <img class="pic" src="../../img/animal_Dog.png" alt="">
                        <span class="Mtitle">강아지</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu4">
                        <img class="pic" src="../../img/animal_Cat.png" alt="">
                        <span class="Mtitle">고양이</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu5">
                        <img class="pic" src="../../img/animal_Hamster.png" alt="">
                        <span class="Mtitle">그 외</span>
                    </div>
                </div>
                </a>


                <div class="Notice">
                    <div class="new">
                        <a href="">버틀러 소식</a>
                    </div>
                    <div class="notice2">
                       <a href="">
                       <div id="choose" class="choose1">
                            <div class="Nimg"></div>
                            <div class="inform">
                                <div class="Ntitle">제목</div>
                                <div class="Ncontents">내용</div>
                            </div>
                        </div>
                        </a> 
                        <a href="">
                        <div id="choose" class="choose2">
                            <div class="Nimg"></div>
                            <div class="inform">
                                <div class="Ntitle">제목</div>
                                <div class="Ncontents">내용</div>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
              
            </body>



<!-- Footer -->
<%@ include file="../../footer/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script src="../../js/pc_header_login.js"></script>



</html>