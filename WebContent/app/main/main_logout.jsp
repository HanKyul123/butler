<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Butler-Animal Hotel</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    
</head>



<%@ include file="../../header/pc_header.jsp" %>

		<!-- Body -->
            <body>
            <!-- 헤더  -->
  
            
            	<div class="main">
                <div class="slice">
                    <img class="mainimg" src="${pageContext.request.contextPath}/img/메인베너배경이미지.jpg" alt="">
                </div>

                <div class="menuBanner">
                <a href="">
                    <div id="menuB" class="menu1">
                        <img class="pic" src="${pageContext.request.contextPath}/img/animal_hospital.png" alt="">
                        <span class="Mtitle">동물병원</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu2">
                        <img class="pic" src="${pageContext.request.contextPath}/img/animal_Hotel.png" alt="">
                        <span class="Mtitle">호텔</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu3">
                        <img class="pic" src="${pageContext.request.contextPath}/img/animal_Dog.png" alt="">
                        <span class="Mtitle">강아지</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu4">
                        <img class="pic" src="${pageContext.request.contextPath}/img/animal_Cat.png" alt="">
                        <span class="Mtitle">고양이</span>
                    </div>
                </a>
                <a href="">
                    <div id="menuB" class="menu5">
                        <img class="pic" src="${pageContext.request.contextPath}/img/animal_Hamster.png" alt="">
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
              </div>
	
            </body>

	<!-- Footer -->
		<%@ include file="../../footer/footer.jsp" %>

 <script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script> $js = jQuery.noConflict(); </script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>





</html>