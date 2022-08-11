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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myreservation.css">
</head>
<body class="non_reservation_wrap">
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

            <!-- 내용 공간 -->
            <div class="my_reservation_box2">

                <div class="non_contents">
                    <span class="nonhistory">예약 내역이 없습니다.</span>
                    <br>

                    <a href="">
                        <input class="go_Hotel" type="button" value="다른 호텔 보러가기">  
                    </a>
                </div>
                

            </div>
</body>
</html>