<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo.css">

</head>

<%@ include file="../../../header/pc_header.jsp" %>

<body class="my_info_wrap">
    
    <div class="my_info_title">
        내 정보
    </div>

    <div class="my_info_BigBox">

            <div class="my_info_box1">
                <a class="my_info_magage" href=""><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href=""><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href=""><div id="all_choice">내가 쓴 리뷰</div></a>
                <br>
                <a class="my_cart_info" href=""><div id="all_choice">찜 목록</div></a>
            </div>
            <div class="my_info_box2">

                <div class="modify_title">내 정보 수정</div>

                <div class="profile">
                    <img class="profile" src="${pageContext.request.contextPath}/img/profile1.png" alt="">
                </div>

                <div class="user_email_box">
                    <img src="${pageContext.request.contextPath}/img/카카오톡.png" alt="" class="user_from">
                    <div class="user_email">goldbaby1@naver.com</div>
                </div>


                <div id="all_info" class="user_nick_box">
                    <div id="title_box" class="user_nick_title">닉네임</div>
                    <div id="modify_contents" class="user_nick_name"><span class="user_nick">mbtiCUTE</span>
                        </div>
                </div>

                <input class="write_new_nick" type="text" name="" id="">
                <button class="modify_nick_btn">수정하기</button>


				<!-- 닉네임 안 쓸 씨 넣을 경고문 -->
                <div id="wary">
                    <span class="wary_nick"></span>
                </div>
                


                <div id="all_info" class="user_name_box">

                    <div id="title_box" class="user_name_title">예약자 이름</div>
                    <div id="modify_contents" class="user_name">강예은</div>

                </div>

                
                

                <div id="all_info" class="user_phone_box">

                    <div id="title_box" class="user_phone_title">휴대폰 번호</div>
                    <div id="modify_contents" class="modfiy_phone"><span  class="user_phone">010-9632-8595</span></div>

                </div>

                <div class="phone_notice">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>

                <input class="write_new_phone" type="text" name="" id="">
                <button class="modify_phone_btn">수정하기</button>
                <!-- 누르면 수정하기 -> 인증번호 전송 -->
                
                <!-- 휴대전화 입력할 때 뜨는 경고문 -->
                <div id="wary">
                    <span class="wary_phone"></span>
                </div>
                <input class="write_phone_code" type="text" name="" id="">
                <button class="phone_code_btn">인증하기</button>
                <br>
                
                <!-- 인증번호 입력할 때 뜨는 경고문 -->
                <div id="wary">
                    <span class="wary_code"></span>
                </div>



                <div id="all_info" class="user_addr_box">
                    <div class="user_addr_title" id="title_box">주소</div>
                    <div id="modify_contents" class="modify_addr">서울특별시 강남구 밤고개로 21길 25</div>
                </div>

                <input class="write_new_addr" type="text" name="" id="">
                <button class="modify_addr_btn">수정하기</button>


                <a href="" ><div class="modify_pw">비밀번호 변경 ></div></a>


                <div class="ask_to_user">

                    <span>Butler를 이용하고싶지 않으신가요?</span>
                    <a href="">로그아웃</a>
                    <a href="">회원탈퇴</a>
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
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<%@ include file="../../../footer/footer.jsp" %>

</html>