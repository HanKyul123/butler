<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_reservation.css">
</head>


<%@ include file="../../../header/pc_header.jsp"%>



<body class="myinfo_reservation_wrap">
    <div class="my_reservation_title">
        내 정보
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
                
            <!-- ----------예약중 박스---------- -->
                <span class="ing">예약 중</span>
                    <button id="left_btn1" >
                    <img class="left_btn" src="${pageContext.request.contextPath}/img/left_btn.png" alt="">
                    </button>
                    <button id="right_btn1">
                    <img class="right_btn" src="${pageContext.request.contextPath}/img/right_btn.png" alt="">
                    </button>

                    <div class="boxs" id="ingboxs">

                        <a href="">
                            <div id="ing_box" class="in_boxs">
                                <div class="flex">
                                    <div class="imgbox">
                                        <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" class="hotelimg">
                                    </div>
                                    <div class="in_contents">
                                        <!-- 호텔 이름 가져오기 -->
                                        <div id="ing_hotelname" class="all_name">
                                            		호텔 이름
                                        </div>

                                        <!-- 이용 중 / 이용 완료 / 예약 취소 -->
                                        <div id="ing_contents" class="all_contents">
                                                	이용 중
                                        </div>
                                        <div id="ing_date"  class="all_date">
                                                	아이 맡긴 기간
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                    
                
            <!-- ----------이용완료 박스---------- -->
                <span class="ed">이용 완료</span>

                    <button id="left_btn2">
                    <img class="left_btn" src="${pageContext.request.contextPath}/img/left_btn.png" alt="">
                    </button>
                    <button id="right_btn2">
                    <img class="right_btn" src="${pageContext.request.contextPath}/img/right_btn.png" alt="">
                    </button>


                <div class="boxs" id="edboxs">

                    <a href="">
                        <div id="ed_box" class="in_boxs">
                            <div class="flex">
                                <div class="imgbox">
                                    <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" class="hotelimg">
                                </div>
                                <div class="in_contents">
                                    <div id="ed_hotelname" class="all_name">
                                        		호텔 이름
                                    </div>
                                    <div id="ed_contents" class="all_contents">
                                            	이용 완료
                                    </div>
                                    <div id="ed_date"  class="all_date">
                                            	아이 맡긴 기간
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                   
                </div>
                
                
            <!-- ----------예약취소 박스---------- -->
                <span class="cancel">예약 취소</span>

                    <button id="left_btn3">
                    <img class="left_btn" src="${pageContext.request.contextPath}/img/left_btn.png" alt="">
                    </button>
                    <button id="right_btn3">
                    <img class="right_btn" src="${pageContext.request.contextPath}/img/right_btn.png" alt="">
                    </button>
                
                    <div class="boxs" id="cancelboxs">

                        <a href="">
                            <div id="cancel_box" class="in_boxs">
                                <div class="flex">
                                    <div class="imgbox">
                                        <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" class="hotelimg">
                                    </div>
                                    <div class="in_contents">
                                        <div id="cancel_hotelname" class="all_name">
                                            	호텔 이름
                                        </div>
                                        <div id="cancel_contents" class="all_contents">
                                               	 예약 취소
                                        </div>
                                        <div id="cancel_date"  class="all_date">
                                               	 아이 맡긴 기간
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        
                        
                    </div>

                </div>
                    

            </div>
</body>
<!-- 문서수정할때는주석처리를 하고 진행하세요 -->
<%-- 	<c:choose>
    	<c:when test="${sessionScope.loginUser eq null}">
			<script>
				alert("login후에 이용하세요.");
				window.location.href="/index.jsp"
			</script>
    	</c:when>
	</c:choose> --%>

<%@ include file="../../../footer/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>

<script src="${pageContext.request.contextPath}/js/myinfo_reservation.js"></script>
</html>