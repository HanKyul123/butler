<%@page import="com.butler.app.dao.UserDTO"%>
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
												<span class="Eprice">가격</span> <span class="Ewon">원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</c:when>
			</c:choose>
		<!-- 반복끝 -->	
			
			<%-- <div>
				<div class="Egroup">
					<a href=""><div id="Ebox" class="Ebox5">

							<!-- id 이름 : Hotel_pic -->
							<div class="Epic">
								<img
									src="${pageContext.request.contextPath}/img/example_hotel.webp"
									alt="" id="Hotel_pic">
							</div>
							<div class="Einfo">
								<div class="Enamebox">
									<span class="Ename">호텔 이름</span>
								</div>

								<div class="Eheartbox">
									<img src="${pageContext.request.contextPath}/img/Star.png"
										alt="" class="Eheartimg"
										style="width: 18px; position: relative; bottom: 4px; margin-right: 5px;">
									<span class="Eheart
                                        ">별점</span>
								</div>

								<div class="Epricebox">
									<span class="Eprice">가격</span> <span class="Ewon">원</span>
								</div>
							</div>
						</div></a>
				</div>
			</div>
			<div>
				<div class="Egroup">
					<a href=""><div id="Ebox" class="Ebox5">

							<!-- id 이름 : Hotel_pic -->
							<div class="Epic">
								<img
									src="${pageContext.request.contextPath}/img/example_hotel.webp"
									alt="" id="Hotel_pic">
							</div>
							<div class="Einfo">
								<div class="Enamebox">
									<span class="Ename">호텔 이름</span>
								</div>

								<div class="Eheartbox">
									<img src="${pageContext.request.contextPath}/img/Star.png"
										alt="" class="Eheartimg"
										style="width: 18px; position: relative; bottom: 4px; margin-right: 5px;">
									<span class="Eheart
                                        ">별점</span>
								</div>

								<div class="Epricebox">
									<span class="Eprice">가격</span> <span class="Ewon">원</span>
								</div>
							</div>
						</div></a>
				</div>
			</div>
			<div>
				<div class="Egroup">
					<a href=""><div id="Ebox" class="Ebox5">

							<!-- id 이름 : Hotel_pic -->
							<div class="Epic">
								<img
									src="${pageContext.request.contextPath}/img/example_hotel.webp"
									alt="" id="Hotel_pic">
							</div>
							<div class="Einfo">
								<div class="Enamebox">
									<span class="Ename">호텔 이름</span>
								</div>

								<div class="Eheartbox">
									<img src="${pageContext.request.contextPath}/img/Star.png"
										alt="" class="Eheartimg"
										style="width: 18px; position: relative; bottom: 4px; margin-right: 5px;">
									<span class="Eheart
                                        ">별점</span>
								</div>

								<div class="Epricebox">
									<span class="Eprice">가격</span> <span class="Ewon">원</span>
								</div>
							</div>
						</div></a>
				</div>
			</div> --%>
			
			
			
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
				</a> <a href="">
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