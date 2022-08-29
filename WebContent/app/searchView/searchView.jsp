<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
    <title>Butler-Animal Hotel 검색 결과</title>
<%@ include file="../../header/pc_header.jsp" %>
</head>
<!-- 헤더  -->
<body class="search_body">
    <!-- 검색 키워드 -->
    <div class="SearchWord">
        <span class="">${keyword}</span>
    </div>

    <div class="wrap1">
        <!-- 태그 고르기 -->
    <form method="post" action="/hotel/choice.ho">
        <div class="Tagbox">
           <input type="hidden" id="keyword" value="${keyword}" name="keyword">
           
            <!-- 상세 조건 -->
            <div id="Tagin" class="detail"><span>상세 조건</span></div>

            <!-- 반려동물 분류 -->     
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="petType">반려동물 분류</div>
                <div class="checkbox1">
                    <label><input type="checkbox" name="dog" id="pet" value="1">강아지</label><br>
                    <label><input type="checkbox" name="cat" id="pet" value="2">고양이</label><br>
                    <label><input type="checkbox" name="bird" id="pet" value="3">조류</label><br>
                    <label><input type="checkbox" name="reptile" id="pet" value="4">파충류</label><br>
                    <label><input type="checkbox" name="amphibia" id="pet" value="5">양서류</label><br>
                    <label><input type="checkbox" name="rodent" id="pet" value="6">설치류</label><br>
                    <label><input type="checkbox" name="weasel" id="pet" value="7">족제비과</label><br>
                    <label><input type="checkbox" name="pig" id="pet" value="8">돼지류</label><br>
                    <label><input type="checkbox" name="rabbit" id="pet" value="9">토끼류</label><br>
                    <label><input type="checkbox" name="else_pet" id="pet" value="0">기타</label>
                </div>
            </div>


            <!-- 숙소 분류 -->
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="HotelType">숙소 분류</div>
                <div class="checkbox2">
                    <label><input type="checkbox" name="Hotel" id="Hotel" value="1">호텔</label><br>
                    <label><input type="checkbox" name="Hospital" id="Hotel" value="2">동물병원</label>
                </div>         
            </div>
            
            <!-- 지역 분류 -->
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="locationType">지역 분류</div>
                <div class="checkbox3">
                    <label><input type="checkbox" name="Seoul" id="location" value="12">서울</label>
                    <label><input type="checkbox" name="Busan" id="location" value="13">부산</label>
                    <label><input type="checkbox" name="Daegu" id="location" value="12">대구</label>
                    <label><input type="checkbox" name="Incheon" id="location" value="13">인천</label>
                    <label><input type="checkbox" name="Gwangju" id="location" value="12">광주</label>
                    <label><input type="checkbox" name="Daejeon" id="location" value="13">대전</label>
                    <label><input type="checkbox" name="Ulsan" id="location" value="12">울산</label>
                    <label><input type="checkbox" name="Sejong" id="location" value="13">세종</label>
                    <label><input type="checkbox" name="Gyeonggi_do" id="location" value="12">경기도</label>
                    <label><input type="checkbox" name="Gangwon_do" id="location" value="13">강원도</label>
                    <label><input type="checkbox" name="Chungcheongbuk_do" id="location" value="12">충청북도</label>
                    <label><input type="checkbox" name="Chungcheongnam_do" id="location" value="13">충청남도</label>
                    <label><input type="checkbox" name="Jeollabuk_do" id="location" value="12">전라북도</label>
                    <label><input type="checkbox" name="Jeollanam_do" id="location" value="13">전라남도</label>
                    <label><input type="checkbox" name="Gyeongsangbuk_do" id="location" value="12">경상북도</label>
                    <label><input type="checkbox" name="Gyeongsangnam_do" id="location" value="13">경상남도</label>
                    <label><input type="checkbox" name="Jeju" id="location" value="13">제주</label>
                </div>         
            </div>
            
            
			<!-- 검색 버튼 -->
            <button type="submit" id="hashsearch" >선택</button>
        </div>
       </form>

       

        <!-- 검색 결과 상품들 -->
        <div class="prod">

            <!-- 필터 -->
            <div class="choice">
                <input type="button" value="가나다순" onClick="location.href='/hotel/choice/hangul.ho?keyword=${keyword}'"> 
                <input type="button" value="낮은 가격순" onClick="location.href='/hotel/choice/lowCharge.ho?keyword=${keyword}'">
            </div>
 

            <!-- 호텔란 -->
            <c:choose>
            	<c:when test="${list != null and list.size()>0 }">
            		<c:forEach items="${list}" var="result">				      
					  <div class="prod_heart">              		
                		<button id="heart_btn"><img id="heart" src="${pageContext.request.contextPath}/img/heart.png" alt=""></button>
                		 
            			<a href="/hotel/reservationViewAction.ho?business_place_num_pk=${result.business_place_num_pk}">
            			<div class="prodbox">
		                	<table class="prodtable">		                  
		                    <!-- 호텔사진, 안쪽에 좋아요 버튼 -->
		                    <div class="HotelPic">
		                    <img id="Hotelimg" src="${pageContext.request.contextPath}/img/business_place_img/${result.business_place_num_pk}/${result.business_place_num_pk}_1.png" alt="">
		                        
		                    </div>
								
		                    <!-- 호텔 소개란 -->
		                    <div class="Hotelprodbox">
		                        <!-- 호텔 이름 -->
		                        <div class="Hotelname"><span>${result.business_name}</span></div>
		                        <div class="famousbox">
		                            <div class="star">별점</div>
		                            <div class="starresult">${result.business_workplace_score}</div>
		                            <!-- <div class="reviewcnt"><span id="reviewcnt">리뷰수</span></div> -->
		                        </div>
		                        <div class="address"><span id="address">
		                        ${result.business_addr} ${result.business_addrdetail}</span></div>
		                        <div class="Hotelinfo"><span id="Hotelinfo">${result.business_main_intro}</span></div>
		                        <div class="Hotelprice">
		                            <span class="price">
		                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${result.business_min_charge}" var="minCharge" />
		                            ${minCharge}</span>
		                            <span class="won">원</span>
		                        </div>
		                    </div>
		                </table>
           			 </div></a>
           			 </div>
            		</c:forEach>
            	</c:when>
            	<c:otherwise>
					<div class="whitediv" style="width: 55%; height: 400px;">
                		<div class="herespan" style="position: relative; top: 170px; left: 150px;">
                    		<span class="nonsearch">검색 결과가 없습니다.</span>
                		</div>
            		</div>
				</c:otherwise>
            </c:choose>

        </div>


        <!-- 검색결과 상품들 나열 -->


    </div>
    
</body>
<%@ include file="../../footer/footer.jsp" %>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/searchdate.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<link href="https://www.driveria.net/blog/jquery-ui-datepicker/css/normalize.css" rel="stylesheet" type="text/css"/>

</html>