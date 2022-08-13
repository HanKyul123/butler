<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NONmyReview</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_nonreview.css">
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

                <div class="non_contents">
                    <span class="nonhistory">내가 쓴 리뷰가 없습니다.</span>
                    <br>

                    <a href="">
                        <input class="go_Hotel" type="button" value="다른 호텔 보러가기">  
                    </a>
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


</html>