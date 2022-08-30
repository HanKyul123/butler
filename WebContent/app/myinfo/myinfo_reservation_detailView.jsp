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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
</head>
<%@ include file="/../../header/pc_header.jsp" %>
<body class="myinfo_reservation_detail_wrap">
    <div class="my_reservation_title">
        내 정보
    </div>
 
    <div class="my_reservation_BigBox">

            <div class="my_reservation_box1">
                <a class="my_info_magage" href="${pageContext.request.contextPath}/app/myinfo/myinfoView.jsp"><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href="/book/findMyReservation.book"><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href="/user/myinfoRevieViewAction.us"><div id="all_choice">내가 쓴 리뷰</div></a>

            </div>
            

            <!-- -------------------내용 공간------------------- -->
            <div class="my_reservation_box2">

                <!-- 호텔 이름 -->
				<div class="detail_hotel_name">
               		<a href="">
						${book.business_name}
					</a>
				</div>
               <c:choose>		
					<c:when test="${book != null and book.book_status==1}">
						<div id="detail_now" class="detail_now">예약 중</div>
						<div id="cancel_btn">
                			<a href="/book/cancelReservation.book?BOOK_NUM_PK=${book.BOOK_NUM_PK}"><button type="button" id="reserve_cancel">예약 취소</button>
							</a>
						</div>
					</c:when>
					<c:when test="${book != null and book.book_status==2}">
						<div id="detail_cancel" class="detail_cancel">예약 취소</div>
					</c:when>
					<c:otherwise>
						<div id="detail_ed" class="detail_ed">이용 완료</div>
						<a href="/review/goReviewWriting.review?BOOK_NUM_PK=${book.BOOK_NUM_PK}"><button id="write_review">리뷰 쓰기</button></a>
					</c:otherwise>     
                </c:choose>
                <!-- 고른 날짜 -->
                <div class="detail_date">${book.book_checkin_date} ~ ${book.book_checkout_date}</div>		
                <!-- 예약 번호 -->
                <div class="detail_reserv_num all" >
                    <div class="title">예약 번호</div>
                    <span class="reserv_num detail_content">${book.BOOK_NUM_PK}</span>
                </div>
                <!-- 예약자 이름 -->
                <div class="detail_reserv_name all">
                    <div class="title">예약자 이름</div>
                    <span class="reserv_name detail_content">${LoginUser.user_name}</span>
                </div>
                <!-- 예약자 핸드폰 번호 -->
                <div class="detail_reserv_phone all">
                    <div class="title">핸드폰 번호</div>
	                <span class="reserv_phone detail_content">${LoginUser.user_phone}</span>
                </div>

                <!-- 고른 옵션의 반려동물 정보 박스 -->
                <div class="title" id="detail_animal">
                    	반려동물 정보 <img src="${pageContext.request.contextPath}/img/treats.png" alt="" class="treats">
                </div>
                <div class="detail_animal_box">
 				<c:choose>		
					<c:when test="${pets != null}">
					<c:forEach items="${pets}" var="pets">
						<div class="detail_pet_box">
	                        <div class="pet_kind">
	                          	 종류: <span id="PK">${pets.pets_name}</span>
	                        </div>
	                        <div class="pet_weight">
	                        	무게: <span id="PW">${pets.pets_weight}</span>
	                        </div>
	                    </div>
					</c:forEach>
					</c:when>
				</c:choose>
                </div>
            </div>
    </div>
</body>


<!-- 문서수정할때는주석처리를 하고 진행하세요 -->
<%-- <c:choose>
    	<c:when test="${sessionScope.loginUser eq null}">
			<script>
				alert("login후에 이용하세요.");
				window.location.href="/index.jsp"
			</script>
    	</c:when>
	</c:choose> --%>
<%@ include file="../../../footer/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>

<script src="${pageContext.request.contextPath}/js/myinfo_reservation_detail.js"></script>

</html>