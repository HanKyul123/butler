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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_writereview.css">
</head>

<%@ include file="../../header/pc_header.jsp" %>

<body class="myinfo_writereview_wrap">
    <div class="my_reservation_title">
        내 정보
    </div>

    <div class="my_writereview_BigBox">

            <div class="my_writereview_box1">
                <a class="my_info_magage" href=""><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href=""><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href=""><div id="all_choice">내가 쓴 리뷰</div></a>
                <br>
                <a class="my_cart_info" href=""><div id="all_choice">찜 목록</div></a>
            </div>



            <div class="my_writereview_box2">

                <div class="reviewtitle">
                    리뷰 쓰기
                </div>

                <!-- 이용 완료한 호텔 정보 -->
                <!-- 클릭하면 그 호텔 상세페이지 ㄱ -->
                <a href="">
                    <div class="bringHotel">

                        <!-- 호텔 대표 사진 -->
                        <div class="Hotelpic">
                            <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" id="Hotelimg">
                        </div>


                        <!-- 호텔 이름 / 동물 종류 / 기간 -->
                        <div class="textHotelinfo">

                            <!-- 호텔 이름 -->
                            <div id="hotelname" class="H_info">
                                <span class="H_name">여기는 호텔이름입니다아아아아아아아ㅏ앙아아아ㅏ아아아</span>
                            </div>
        
                            <!-- 동물 종류 -->

                            <div id="pet" class="H_info">
                                아이 종류 : 
                                <span id="petname">종류종류</span>
                            </div>
        
                            <!-- 동물 맡긴 기간 -->
                            <div id="reserveDate" class="H_info">
                                기간 : 
                                <span id="petdate">9월 머시기 일</span>
                            </div>

                        </div>
                    </div>
                </a>


                <textarea name="" id="write_review" ></textarea>

                    
                    
                <input type="file" name="file" id="file"
                multiple>

                <div class="getpic">
                    <!-- 받아오는 이미지들  id를 전부 getpic으로 설정 -->
                    <div class="imgbox">
                        <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" id="getpic">
                        <button id="Dbtn"><img src="${pageContext.request.contextPath}/img/X_black.png" alt="" class="X"></button>
                    </div>
                    <div class="imgbox">
                        <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" id="getpic">
                        <button id="Dbtn"><img src="${pageContext.request.contextPath}/img/X_black.png" alt="" class="X"></button>
                    </div>
                    <div class="imgbox">
                        <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" id="getpic">
                        <button id="Dbtn"><img src="${pageContext.request.contextPath}/img/X_black.png" alt="" class="X"></button>
                    </div>

                </div>

                <div class="upload">
                    <input class="SC" id="UP" type="submit" value="리뷰 업로드">
                    <input class="SC" id="DE" type="button" value="취소">
                </div>
            </div>

        </div>





</body>

<%@ include file="../../footer/footer.jsp" %>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script src="${pageContext.request.contextPath}/js/writereview.js"></script>

</html>