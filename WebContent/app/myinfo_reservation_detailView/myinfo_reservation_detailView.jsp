<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NonReservation</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_reservation_detail.css">
</head>
<body class="myinfo_reservation_detail_wrap">
    <div class="my_reservation_title">
        예약 내역
    </div>

    <div class="my_reservation_BigBox">

            <div class="my_reservation_box1">
                <a class="my_info_magage" href=""><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href=""><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href=""><div id="all_choice">내가 쓴 리뷰</div></a>
                <br>
                <a class="my_cart_info" href=""><div id="all_choice">찜 목록</div></a>
            </div>
            

            <!-- -------------------내용 공간------------------- -->
            <div class="my_reservation_box2">

                <!-- 호텔 이름 -->
                <a href="">
                    <div class="detail_hotel_name">
                        (호텔 이름)우리 아이 호강하는 세계 최고 호텔
                    </div>
                </a>

                <!-- 이용 중 / 이용 완료 / 예약 취소 -->
                <div class="detail_now">이용 중</div>

                <!-- 고른 날짜 -->
                <div class="detail_date">8월 10일 수 ~ 8월 12일 금</div>

                <!-- 예약 번호 -->
                <div class="detail_reserv_num all" >
                    <div class="title">예약 번호 
                    </div>
                    <span class="reserv_num detail_content">758495</span>
                </div>
                
                <!-- 예약자 이름 -->
                <div class="detail_reserv_name all">
                    <div class="title">예약자 이름 
                    </div>
                    <span class="reserv_name detail_content">강예은</span>
                </div>
                
                <!-- 예약자 핸드폰 번호 -->
                <div class="detail_reserv_phone all">
                    <div class="title">핸드폰 번호  
                    </div>
                    <span class="reserv_phone detail_content">
                        010-9632-8595
                    </span>
                </div>

                <!-- 고른 옵션의 반려동물 정보 박스 -->
                <div class="title" id="detail_animal">
                    	반려동물 정보 <img src="${pageContext.request.contextPath}/img/treats.png" alt="" class="treats">
                </div>
                <div class="detail_animal_box">

					<!-- 상품 갯수만큼 detail_pet_box 늘어남 -->
                    <!-- ------------------------ -->
                    <div class="detail_pet_box">

                        <!-- 종류 가져오기 -->
                        <div class="pet_kind">
                            종류: <span id="PK">강아지</span>
                        </div>

                        <!-- 무게와 가격 가져오기 -->
                        <div class="pet_weight">
                            무게: <span id="PW">1~5kg 50000원</span>
                        </div>
                        
                    </div>-
                    <!-- ------------------------ -->




                </div>

            </div>

    </div>





</body>

<script src="${pageContext.request.contextPath}/js/myinfo_reservation_detail.js"></script>
</html>