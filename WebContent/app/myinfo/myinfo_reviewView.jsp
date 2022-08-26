<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myReview</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_review.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
</head>

<%@ include file="../../../header/pc_header.jsp"%>


<body class="myinfo_review_wrap">

    <div class="my_review_title">
        내 정보
    </div>

    <div class="my_review_BigBox">

            <div class="my_review_box1">
                <a class="my_info_magage" href=""><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href=""><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href=""><div id="all_choice">내가 쓴 리뷰</div></a>
                <br>
                <a class="my_cart_info" href=""><div id="all_choice">찜 목록</div></a>
            </div>
            

           <!-- -------------------내용 공간------------------- -->
            <div class="my_review_box2">

                <div class="myinfo_title">내가 쓴 리뷰</div>
                <div class="myreview_cnt">
                    <!-- 만약에 0건이면 nonreview 창 띄어주기 -->
                   	 작성한 리뷰 
                    <span id="MRC_n">n</span>건
                </div>



                <!-- --------------- 리뷰들이 있는 박스 --------------- -->
                <div class="my_review_box2_1">
       
            <!-- ---------------한 개의 리뷰 박스------------- -->
                    <div class="review_box">
                        <div class="img_name_pet">
                            <!-- 호텔 이미지 -->
                            <div>
                                <img src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="" class="Hotel_img">
                            </div>
                            <!-- 호텔이름/동물종류/무게,가격 -->
                            <div class="name_pet">
                                <div class="Hname">호텔 이름</div>
                                <div class="Pname">동물 종류</div>
                                <div class="Pprice">동물 무게와 가격</div>
                            </div>
                        </div>


                        <!-- 리뷰 내용과 수정/삭제 버튼 -->
                        <!--  리뷰 수정 누르면 display:none;  -->
                        <div class="content_btn">
                            <div class="review_content">
                                	여기 완전 최고임
                            </div>
                            <div class="btn">
                                <!-- 수정 버튼 -->
                                <button class="MDbtn" id="Mbtn" onclick="modify()" >
                                    <img class="MD" id="modify_btn" src="${pageContext.request.contextPath}/img/modify_icon.png" alt="" title="수정하기">
                                </button>

                                <!-- 삭제 버튼 -->
                                <button class="MDbtn" id="Dbtn" onclick="delete_review()">
                                    <img src="${pageContext.request.contextPath}/img/delete.png" alt="" class="MD" id="delete_btn" title="삭제하기">
                                </button>
                            </div>
                        </div>

                        <!--  리뷰 수정 완료 또는 취소하면 display:none;  -->
                        <div class="newreview_btn">
                            <textarea name="" id="new_review" cols="30" rows="10"></textarea>
                            
                            <div>
                                <div>
                                    <button class="MDBP" id="complete" onclick="complete()">
                                        <img src="${pageContext.request.contextPath}/img/complete_btn.png" alt="" class="MDB" title="수정완료">
                                    </button>
                                </div>
                                <button class="MDBP" id="cancel" onclick="cancel()">
                                    <img src="${pageContext.request.contextPath}/img/Mdelete_btn.png" alt="" class="MDB" id="CB" title="취소">
                                </button>
                            </div>
                        </div>

                    </div>
            <!-- -------------------------------------------- -->
            

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
<script src="${pageContext.request.contextPath}/js/myinfo_review.js"></script>

</html>