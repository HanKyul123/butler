<%@page import="com.butler.app.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Butler:Animal Hotel</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick-theme.css">
</head>
<!--  -->
	<%@ include file="../header/pc_header.jsp" %>


<!-- Body -->
<body>

	<div class="Etitle">이번주 인기 호텔 Top 5</div>


	<div class="eventbox">
		<section class="center slider">
		
		<!-- 반복시작 -->
			<c:choose>
				<c:when test="${recommandResult != null and recommandResult.size()>0 }">
					<c:forEach items="${recommandResult}" var="recommandResult">
						<div>
							<div class="Egroup">
								<a href="/hotel/reservationViewAction.ho?business_place_num_pk=${recommandResult.business_place_num_pk}">
									<div id="Ebox" class="Ebox5">

										<!-- id 이름 : Hotel_pic -->
										<div class="Epic">
											<img src="${pageContext.request.contextPath}/img/business_place_img/${recommandResult.business_place_num_pk}/${recommandResult.business_place_num_pk}_1.png" alt="" id="Hotel_pic">
										</div>
										<div class="Einfo">
											<div class="Enamebox">
												<span class="Ename">${recommandResult.business_name}</span>
											</div>

											<div class="Eheartbox">
												<img src="${pageContext.request.contextPath}/img/Star.png" alt="" class="Eheartimg" style="width: 18px; position: relative; bottom: 4px; margin-right: 5px;">
												<span class="Eheart">${recommandResult.business_workplace_score}</span>
											</div>

											<div class="Epricebox">
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${recommandResult.business_min_charge}" var="businessMinCharge" />
												<span class="Eprice">${businessMinCharge}</span> <span class="Ewon">원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</c:when>
			</c:choose>
			
		</section>
	</div>

	<div class="main">
		<div class="slice">
			<img class="mainimg"
				src="${pageContext.request.contextPath}/img/메인베너배경이미지.jpg" alt="">
		</div>

		<div class="menuBanner">
			<a href="/hotel/searchkeyword.ho?keyword=병원">
				<div id="menuB" class="menu1">
					<img class="pic" src="${pageContext.request.contextPath}/img/animal_hospital.png" alt=""> 
					<span class="Mtitle">동물병원</span>
				</div>
			</a> 
			<a href="/hotel/searchkeyword.ho?keyword=호텔">
				<div id="menuB" class="menu2">
					<img class="pic" src="${pageContext.request.contextPath}/img/animal_Hotel.png" alt=""> 
					<span class="Mtitle">호텔</span>
				</div>
			</a> 
			<a href="/hotel/searchkeyword.ho?keyword=강아지">
				<div id="menuB" class="menu3">
					<img class="pic" src="${pageContext.request.contextPath}/img/animal_Dog.png" alt="">
					<span class="Mtitle">강아지</span>
				</div>
			</a> 
			<a href="/hotel/searchkeyword.ho?keyword=고양이">
				<div id="menuB" class="menu4">
					<img class="pic" src="${pageContext.request.contextPath}/img/animal_Cat.png" alt="">
					<span class="Mtitle">고양이</span>
				</div>
			</a> 
			<a href="/hotel/searchkeyword.ho?keyword=그 외">
				<div id="menuB" class="menu5">
					<img class="pic" src="${pageContext.request.contextPath}/img/animal_Hamster.png" alt=""> 
					<span class="Mtitle">그 외</span>
				</div>
			</a>
		</div>
	

		<div class="Notice">
			<div class="new">
				<a href="${pageContext.request.contextPath}/app/noticeView/noticeView.jsp" title="공지사항 페이지로 가기">버틀러 소식 go ▶</a>
			</div>
			<div class="notice2">
				
					<div id="choose" class="choose1">
					<a href="https://www.pet-friends.co.kr/main/tab/2">
						<div class="Nimg">
							<img id = "Nimgs" src="${pageContext.request.contextPath}/img/petfriends.jpg">
						</div>
						<div class="inform">
							<div class="Ntitle" id="Ntitle1">펫프렌즈 구경하러 가실래요?</div>
							<div class="Ncontents">
								반려동물 <span class="pink">1등</span> 쇼핑몰<br>
								<span class="gray">사료, 용품, 간식 24시간 전문가 추천! <br>매달 쏟아지는 쿠폰 혜택 놓치지마세요!</span>			
							</div>
						</div>
						</a> 
					</div>
				
				
				
					<div id="choose" class="choose2">
						<a href="https://wayopet.com/petsitter">
							<div class="Nimg">
								<img id = "Nimgs" src="${pageContext.request.contextPath}/img/wayo.webp">
							</div>
							<div class="inform">
								<div class="Ntitle" id="Ntitle2">펫시터가 집으로  <span class="blue"><b>wayo</b></span></div>
								<div class="Ncontents">
									<span class="blue">펫시터</span> 방문 돌봄 및 산책 서비스 <span class="blue"><b>와요</b></span><br>
									<span class="gray">와요에만 있는 실시간 LIVE 영상 기능으로<br>언제 어디서든 안심하고 펫시터를 불러보세요!</span>			
								</div>
							</div>
						</a>
					</div>
				
			</div>
		</div>
	</div>
	</form>
</body>

<!-- Footer -->
		<%@ include file="../footer/footer.jsp" %>

 <script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script> $js = jQuery.noConflict(); </script>
 <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/js/slick_copy.js" type="text/javascript" charset="utf-8"></script>
 <script type="text/javascript">
   $(document).on('ready', function() {
     $(".center").slick({
       dots: false,
       infinite: false,
       centerMode: true,
       slidesToShow: 3,
       slidesToScroll: 3
     });
   });
</script>
</html>