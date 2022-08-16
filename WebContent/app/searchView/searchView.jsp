<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<body>
    <!-- 검색 키워드 -->
    <div class="SearchWord">
        <span class="">${keyword}</span>
    </div>

    <div class="wrap1">
        <!-- 태그 고르기 -->
        <div class="Tagbox">

            <!-- 날짜 -->
            <div id="Tagin" class="datebox">
                <div class="datetitle">날짜</div>
                <div class="today">오늘 날짜 : <span id="today"></span></div> 
                <input type="text" id="datepicker1" readonly >
                ~
                <input type="text" id="datepicker2" readonly>
          
          
                <img id="calender" src="${pageContext.request.contextPath}/img/calender.png" alt="">
            </div>
           
            <!-- 상세 조건 -->
            <div id="Tagin" class="detail"><span>상세 조건</span></div>

            <!-- 반려동물 분류 -->     
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="petType">반려동물 분류</div>
                <div class="checkbox1">
                    <label><input type="checkbox" name="dog" id="pet">강아지</label>
                    <label><input type="checkbox" name="cat" id="pet">고양이</label>
                    <label><input type="checkbox" name="else_pet" id="pet">그 외</label>
                </div>
            </div>


            <!-- 숙소 분류 -->
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="HotelType">숙소 분류</div>
                <div class="checkbox2">
                    <label><input type="checkbox" name="Hotel" id="Hotel">호텔</label><br>
                    <label><input type="checkbox" name="Hospital" id="Hotel">동물병원</label>
                </div>
            </div>

        </div>

        <!-- 검색 결과 상품들 -->
        <div class="prod">

            <!-- 필터 -->
            <div class="choice">
                <input type="button" value="거리순">
                <input type="button" value="낮은 가격순">
            </div>


            <!-- 호텔란 -->
            
            <c:choose>
            	<c:when test="${list != null and list.size()>0 }">
            		<c:forEach items="${list}" var="result">
            		
            			<a href=""><div class="prodbox">
		                <table class="prodtable">		                  
		                    <!-- 호텔사진, 안쪽에 좋아요 버튼 -->
		                    <div class="HotelPic">배경에사진
		                        <div class="heart">
		                            <img src="" alt="">
		                        </div>  
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
		                            <span class="price"><span id="price"></span>1000</span>
		                            <span class="won">원</span>
		                        </div>
		                    </div>
		                </table>
           			 </div></a>
            		</c:forEach>
            	</c:when>
            	<c:otherwise>
					<div style="text-align: center; font-size: 20px;">검색된 결과가 없습니다.</div>
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