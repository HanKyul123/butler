<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Butler:my Reservation</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/myinfo_reservation.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pc_header.css">
</head>
<%@ include file="../../../header/pc_header.jsp"%>
<body class="myinfo_reservation_wrap">
	<div class="my_reservation_title">내 정보</div>
	<div class="my_reservation_BigBox">
		<div class="my_reservation_box1">
			<a class="my_info_magage" href="${pageContext.request.contextPath}/app/myinfo/myinfoView.jsp"><div id="all_choice">내 정보 관리</div></a> <br> 
			<a class="my_reservation_info" href="/book/findMyReservation.book"><div>예약 내역</div></a> <br> 
			<a class="my_review_info" href="/user/myinfoRevieViewAction.us"><div id="all_choice">내가 쓴 리뷰</div></a>
		</div>
		<!-- -------------------내용 공간------------------- -->
		<div class="my_reservation_box2">
			<!-- ----------예약중 박스---------- -->
			<span class="ing">예약 중</span><br>
			<c:choose>		
				<c:when test="${rip != null and rip.size()>0 }">
					<c:forEach items="${rip}" var="rip">
						<div class="boxs" id="ingboxs">
							<a href="/book/goReservationDetailView.book?BOOK_NUM_PK=${rip.BOOK_NUM_PK}">
								<div id="ing_box" class="in_boxs">
									<div class="flex">
										<div class="imgbox">
											<img
												src="${pageContext.request.contextPath}/img/business_place_img/${rip.BUSINESS_PLACE_NUM_FK}/${rip.BUSINESS_PLACE_NUM_FK}_1.png"
												alt="" class="hotelimg">
										</div>
										<div class="in_contents">
											<!-- 호텔 이름 가져오기 -->
											<div id="ing_hotelname" class="all_name">${rip.business_name}</div>
											<!-- 이용 중 / 이용 완료 / 예약 취소 -->
											<div id="ing_date" class="all_date">${rip.book_checkin_date} ~ ${rip.book_checkout_date}</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div id = "non_reservate"> 내역이 없습니다 </div>
				</c:otherwise>
			</c:choose>
			<!-- ----------이용완료 박스---------- -->
			<span class="ed">이용 완료</span><br>
			<c:choose>		
				<c:when test="${ucBook != null and ucBook.size()>0 }">
					<c:forEach items="${ucBook}" var="ucBook">
						<div class="boxs" id="edboxs">
							<a href="/book/goReservationDetailView.book?BOOK_NUM_PK=${ucBook.BOOK_NUM_PK}">
								<div id="ed_box" class="in_boxs">
									<div class="flex">
										<div class="imgbox">
											<img
												src="${pageContext.request.contextPath}/img/business_place_img/${ucBook.BUSINESS_PLACE_NUM_FK}/${ucBook.BUSINESS_PLACE_NUM_FK}_1.png"
												alt="" class="hotelimg">
										</div>
										<div class="in_contents">
											<!-- 호텔 이름 가져오기 -->
											<div id="ed_hotelname" class="all_name">${ucBook.business_name}</div>
											<div id="ed_contents" class="all_contents">이용 완료</div>
											<div id="ed_date" class="all_date">${ucBook.book_checkin_date} ~ ${ucBook.book_checkout_date}</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div id = "non_reservate"> 내역이 없습니다 </div>
				</c:otherwise>
			</c:choose>
			<!-- ----------예약취소 박스---------- -->
			<span class="cancel">예약 취소</span><br>
			<c:choose>		
				<c:when test="${rc != null and rc.size()>0 }">
					<c:forEach items="${rc}" var="rc">
						<div class="boxs" id="cancelboxs">
							<a href="/book/goReservationDetailView.book?BOOK_NUM_PK=${rc.BOOK_NUM_PK}">
								<div id="cancel_box" class="in_boxs">
									<div class="flex">
										<div class="imgbox">
											<img
												src="${pageContext.request.contextPath}/img/business_place_img/${rc.BUSINESS_PLACE_NUM_FK}/${rc.BUSINESS_PLACE_NUM_FK}_1.png"
												alt="" class="hotelimg">
										</div>
										<div class="in_contents">
											<!-- 호텔 이름 가져오기 -->
											<div id="cancel_hotelname" class="all_name">${rc.business_name}</div>
											<div id="cancel_contents" class="all_contents">예약취소</div>
											<div id="cancel_date" class="all_date">${rc.book_checkin_date} ~ ${rc.book_checkout_date}</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div id = "non_reservate"> 내역이 없습니다 </div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
<!-- 문서수정할때는주석처리를 하고 진행하세요 -->
<c:choose>
       <c:when test="${sessionScope.LoginUser eq null}">
         <script>
            alert("login후에 이용하세요.");
            window.location.href="/index.jsp"
         </script>
       </c:when>
</c:choose>

<%@ include file="../../../footer/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>

<script
	src="${pageContext.request.contextPath}/js/myinfo_reservation.js"></script>
</html>